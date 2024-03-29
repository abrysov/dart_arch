import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import '../routes/data/my_api_state.dart';

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

class StateNotifierFreezedExample extends StatelessWidget {
  const StateNotifierFreezedExample({super.key});

  @override
  Widget build(BuildContext context) {
    ///! 2. wrap the UI that uses myApiModel by a StateNotifierProvider (from
    ///! flutter_state_notifier package)
    return StateNotifierProvider<MyApiModel, MyApiState>(
      create: (_) => MyApiModel(),
      child: _DemoPage(),
    );
  }
}

class _DemoPage extends StatefulWidget {
  @override
  __DemoPageState createState() => __DemoPageState();
}

class __DemoPageState extends State<_DemoPage> {
  int _n = 0; // How many names to generate.
  @override
  Widget build(BuildContext context) {
    final state = context.watch<MyApiState>();
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
                data: 'In this example we show how to use StateNotifier and '
                    'freezed state to build a simple app to genrate N random names '
                    '(returns error when N<0). \n\n'
                    'The data class `MyApiState` is generated using **freezed**.\n\n'
                    'The `MyApiModel` is a `StateNotifier`, such that listeners will '
                    'auto update when `model.state` changes.',
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
              final model = context.read<MyApiModel>();
              model.generateRandomNames(this._n);
            },
          ),
          // ! With the sealed union by freezed, we can match on the possible
          // ! states and show different UI.
          state.when<Widget>(
            success: (names) => ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                for (final name in names)
                  ListTile(
                    title: Text(name),
                  )
              ],
            ),
            error: (errorMsg) => Text(
              errorMsg,
              style: const TextStyle(color: Colors.red),
            ),
            loading: () =>
                const Center(child: CircularProgressIndicator.adaptive()),
          ),
        ],
      ),
    );
  }
}
