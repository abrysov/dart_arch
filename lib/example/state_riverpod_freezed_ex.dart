import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import '../routes/data/my_api_state.dart';

//------------------------------
///! 1. define the [MyApiModel] which is a StateNotifier, the model contains a
///! [MyApiState] which is generated by freezed.
class MyApiModel extends StateNotifier<MyApiState> {
  ///! Initially holds a successful state with empty content.
  MyApiModel() : super(MyApiState.success([]));

  ///! MyApiModel provides a function to genreate [n] random names, returns an
  ///! error when n<=0.
  Future<void> generateRandomNames(int n) async {
    state = MyApiState.loading();
    await Future.delayed(const Duration(seconds: 1));
    if (n < 0) {
      state = MyApiState.error('Error: the argument should be positive!');
    } else {
      final randomNames = generateWordPairs()
          .take(n)
          .map((WordPair wp) => wp.asPascalCase)
          .toList();
      state = MyApiState.success(randomNames);
    }
  }
}

//------------------------------
/// ! 2. Define the provider as a **global variable**.
/// In riverpod the providers are no longer tied to widget tree.
/// Note: in Resocoder's tutorial, he defined a "repository" class that abstracts
/// the core logic of generating names (and have one provider depending on
/// another provider). Here I don't have the "repository" abstraction layer.
final kMyApiModelProvider = StateNotifierProvider<MyApiModel, MyApiState>(
  (ref) => MyApiModel(),
);

class RiverpodFreezedExample extends StatelessWidget {
  const RiverpodFreezedExample({super.key});

  @override
  Widget build(BuildContext context) {
    ///! 3. to access the providers, wrap the UI that uses myApiModel by a
    ///! ProviderScope (normally we should wrap the whole MaterialApp).
    return ProviderScope(
      child: _DemoPage(),
    );
  }
}

//------------------------------
///! 4. To access the widget, either wrap a Consumer(), or make a
///! `ConsumerWidget`, there we have access to the `ref` object.
class _DemoPage extends ConsumerStatefulWidget {
  @override
  __DemoPageState createState() => __DemoPageState();
}

class __DemoPageState extends ConsumerState<_DemoPage> {
  int _n = 0; // How many names to generate.
  @override
  Widget build(BuildContext context) {
    ///! We want to show snackbar when state=error, to do so we use ref.listen.
    ///! Note even though this is in build(), it'll only run when state changes.
    ref.listen<MyApiState>(kMyApiModelProvider, (_, state) {
      if (state is ErrorState) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(state.errorMsg),
          ),
        );
      }
    });
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.api),
        title: const Text('Random name generator'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ExpansionTile(
            leading: const Icon(Icons.info),
            title: const Text('Note'),
            children: [
              const MarkdownBody(
                data:
                    'In this example we show how to use riverpod, StateNotifier and '
                    'freezed state to build a simple name generator app.\n\n'
                    'The data class `MyApiState` is generated using **freezed**.\n\n'
                    '`MyApiModel` can genrate N random names (returns error when N<0). \n\n'
                    'The `MyApiModel` is a **StateNotifier**, such that listeners will '
                    'auto update when `model.state` changes.\n\n'
                    'We then use **riverpod** to provide `MyApiModel` to '
                    'widgets in the tree, riverpod is a rewrite of provider '
                    'with many improvements.',
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.code),
                label: const Text('View freezed definition of MyApiState'),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => Scaffold(
                      appBar:
                          AppBar(title: const Text('data/my_api_state.dart')),
                      body: const WidgetWithCodeView(
                        filePath: 'lib/routes/data/my_api_state.dart',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          const Text('Choose how many names to generate:'),
          Slider(
            divisions: 10,
            min: -5,
            max: 5,
            value: this._n.toDouble(),
            onChanged: (val) => setState(() => this._n = val.toInt()),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.send),
            label: Text('Genreate $_n random names'),
            onPressed: () {
              //! Use ref.read(fooProvider) to access provider outside of
              //! `build()`.
              final model = ref.read(kMyApiModelProvider.notifier);
              model.generateRandomNames(this._n);
            },
          ),
          Consumer(
            builder: (context, watch, child) {
              final state = ref.watch(kMyApiModelProvider);
              // ! With the sealed union by freezed, we can match on the possible
              // ! states and show different UI.
              return state.when<Widget>(
                success: (names) => ListView(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    for (final name in names) ListTile(title: Text(name))
                  ],
                ),
                error: (errorMsg) => Text(
                  errorMsg,
                  style: const TextStyle(color: Colors.red),
                ),
                loading: () =>
                    const Center(child: CircularProgressIndicator.adaptive()),
              );
            },
          ),
        ],
      ),
    );
  }
}
