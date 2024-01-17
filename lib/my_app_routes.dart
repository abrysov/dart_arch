import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'home_page.dart';
import 'aroute.dart';
import 'routes/about.dart';
import 'example/animation_animated_builder_ex.dart';
import 'example/animation_animated_container_ex.dart';
import 'example/animation_animated_icons_ex.dart';
import 'example/animation_animated_radial_menu_ex.dart';
import 'example/animation_animated_text_kit_ex.dart';
import 'example/animation_animated_widget_ex.dart';
import 'example/animation_animations_pkg_ex.dart';
import 'example/animation_hero_ex.dart';
import 'example/animation_lottie_ex.dart';
import 'example/animation_low_level_ex.dart';
import 'example/animation_opacity_ex.dart';
import 'example/appbar_backdrop_ex.dart';
import 'example/appbar_basic_appbar_ex.dart';
import 'example/appbar_bottom_appbar_ex.dart';
import 'example/appbar_convex_appbar_ex.dart';
import 'example/appbar_hidable_ex.dart';
import 'example/appbar_search_ex.dart';
import 'example/appbar_sliver_appbar_ex.dart';
import 'example/async_futurebuilder_ex.dart';
import 'example/async_streambuilder_ex.dart';
import 'example/async_streamcontroller_ex.dart';
import 'example/charts_fl_bar_chart_ex.dart';
import 'example/charts_fl_line_chart_ex.dart';
import 'example/charts_fl_pie_chart_ex.dart';
import 'example/charts_graphview_ex.dart';
import 'example/charts_heatmap_calendar_ex.dart';
import 'example/charts_new_heatmap_calendar_ex.dart';
import 'example/charts_pie_chart_ex.dart';
import 'example/charts_radar_chart_ex.dart';
import 'example/charts_time_series_ex.dart';
import 'routes/feature_device_preview.dart';
import 'example/firebase_chatroom_ex.dart';
import 'example/firebase_flutterfire_loginui_ex.dart';
import 'example/firebase_login_ex.dart';
import 'example/firebase_vote_ex.dart';
import 'routes/feature_grey_app.dart';
import 'example/growth_inapp_review_ex.dart';
import 'example/layouts_container_padding_center_ex.dart';
import 'example/layouts_expanded_ex.dart';
import 'example/layouts_fractionally_sizedbox_ex.dart';
import 'example/layouts_row_col_ex.dart';
import 'example/layouts_stack_ex.dart';
import 'example/layouts_wrap_ex.dart';
import 'example/lists_datatable_ex.dart';
import 'example/lists_expansion_tile_ex.dart';
import 'example/lists_grid_list_ex.dart';
import 'example/lists_list_tile_ex.dart';
import 'example/lists_listview_builder_ex.dart';
import 'example/lists_reorderable_ex.dart';
import 'example/lists_slidable_tile_ex.dart';
import 'example/lists_swipe_to_dismiss_ex.dart';
import 'example/lists_wheel_scroll_view_ex.dart';
import 'example/monetization_adaptive_banner_ad_ex.dart';
import 'example/monetization_bottom_banner_ad_ex.dart';
import 'example/monetization_in_app_purchase_ex.dart';
import 'example/monetization_inline_banner_ad_ex.dart';
import 'example/monetization_interstitial_ad_ex.dart';
import 'example/monetization_rewarded_ad_ex.dart';
import 'example/monetization_user_purchases_ex.dart';
import 'example/multimedia_edge_detection_ex.dart';
import 'example/multimedia_extended_image_ex.dart';
import 'example/multimedia_image_plugin_ex.dart';
import 'example/multimedia_video_player_ex.dart';
import 'example/nav_bottom_navbar_ex.dart';
import 'example/nav_bottom_sheet_ex.dart';
import 'example/nav_bottom_tabbar_ex.dart';
import 'example/nav_dialogs_ex.dart';
import 'example/nav_draggable_scrollable_sheet_ex.dart';
import 'example/nav_nav_drawer_header_ex.dart';
import 'example/nav_pageselector_ex.dart';
import 'example/nav_routes_ex.dart';
import 'example/nav_tabs_ex.dart';
import 'example/networking_chatgpt_ex.dart';
import 'example/networking_googlebooks_ex.dart';
import 'example/networking_hacker_news_ex.dart';
import 'example/networking_rest_api_fetch_ex.dart';
import 'example/networking_rest_api_send_ex.dart';
import 'example/persistence_file_rw_ex.dart';
import 'example/persistence_hive_ex.dart';
import 'example/persistence_preference_ex.dart';
import 'example/persistence_sembast_ex.dart';
import 'example/persistence_sqlite_ex.dart';
import 'example/plugins_local_auth_ex.dart';
import 'example/plugins_share_plus_ex.dart';
import 'example/plugins_shimmer_ex.dart';
import 'example/plugins_webview_ex.dart';
import 'example/richtext_code_highlight_ex.dart';
import 'example/richtext_markdown_ex.dart';
import 'example/richtext_selectable_ex.dart';
import 'example/state_bloc_ex.dart';
import 'example/state_bloc_lib_ex.dart';
import 'example/state_inherited_widget_ex.dart';
import 'example/state_provider_ex.dart';
import 'example/state_riverpod_freezed_ex.dart';
import 'example/state_scoped_model_ex.dart';
import 'example/state_state_notifier_freezed_ex.dart';
import 'example/widgets_buttons_ex.dart';
import 'example/widgets_card_ex.dart';
import 'example/widgets_dropdown_button_ex.dart';
import 'example/widgets_gradient_ex.dart';
import 'example/widgets_icon_ex.dart';
import 'example/widgets_image_ex.dart';
import 'example/widgets_image_filtered_ex.dart';
import 'example/widgets_like_button_ex.dart';
import 'example/widgets_stateful_widgets_ex.dart';
import 'example/widgets_text_ex.dart';
import 'example/widgets_textfield_ex.dart';
import 'example/widgets_textformfield_ex.dart';
import 'example/widgets_typography_ex.dart';

/// Created by Alex B. for ABMobile.
/// 16.01.2024
///
const homeRoute = ARoute(
  sourceFilePath: 'lib/routes/home.dart',
  title: APP_NAME,
  routeName: Navigator.defaultRouteName,
  child: HomePage(),
);

const aboutRoute = ARoute(
  sourceFilePath: 'lib/routes/about.dart',
  title: 'About',
  links: {
    'Doc': 'https://docs.flutter.io/flutter/material/showAboutDialog.html'
  },
  child: AboutRoute(),
);

class RoutesGroup {
  const RoutesGroup(
      {required this.groupName, required this.icon, required this.routes});

  final String groupName;
  final Widget icon;
  final List<ARoute> routes;
}

const kMyAppRoutesBasic = <RoutesGroup>[
  RoutesGroup(
    groupName: 'Widgets',
    icon: Icon(Icons.extension),
    routes: <ARoute>[
      ARoute(
        sourceFilePath: 'lib/example/widgets_icon_ex.dart',
        title: 'Icon',
        child: IconExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_text_ex.dart',
        title: 'Text',
        child: TextExample(),
      ),
      ARoute(
        title: 'Typography',
        description: 'Peek all built-in text styles.',
        sourceFilePath: 'lib/example/widgets_typography_ex.dart',
        child: TypographyExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_textfield_ex.dart',
        title: 'TextField',
        description: 'Text input.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/TextField-class.html'
        },
        child: TextFieldExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_textformfield_ex.dart',
        title: 'TextFormField',
        description: 'Convenience widget wrapping a TextField in a FormField.',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/TextFormField-class.html'
        },
        child: TextFormFieldExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_image_ex.dart',
        title: 'Image',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Image-class.html'
        },
        child: ImageExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_card_ex.dart',
        title: 'Card, Inkwell',
        description:
            'Container with corner and shadow; inkwell (ripple) effects',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/Card-class.html',
          'Inkwell': 'https://flutter.io/cookbook/gestures/ripples/',
        },
        child: CardExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_gradient_ex.dart',
        title: 'Gradient',
        description: 'Gradient and BoxDecoration to for better UI',
        links: {
          'Blog':
              'https://www.digitalocean.com/community/tutorials/flutter-flutter-gradient',
        },
        child: GradientExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_buttons_ex.dart',
        title: 'Buttons',
        description:
            'ElevatedButton, TextButton, OutlineButton, IconButton&Tooltips',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/ButtonBar-class.html',
          'Gallery button demo code':
              'https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/buttons_demo.dart'
        },
        child: ButtonsExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_like_button_ex.dart',
        title: 'Like Button',
        description: "Button with animation effects similar to Twitter's heart",
        links: {'Pub': 'https://pub.dev/packages/like_button'},
        child: LikeButtonExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_dropdown_button_ex.dart',
        title: 'DropdownButton, MenuButton',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/DropdownButton-class.html'
        },
        child: DropdownButtonExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_image_filtered_ex.dart',
        title: 'ImageFiltered',
        description: 'Adding blur or transformation to widgets.',
        links: {'Youtube video': 'https://youtu.be/7Lftorq4i2o'},
        child: ImageFilteredExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/widgets_stateful_widgets_ex.dart',
        title: 'Other stateful widgets',
        description: 'Switch, CheckBox, Slider, etc.',
        child: StatefulWidgetsExample(),
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Layouts',
    icon: Icon(Icons.dashboard),
    routes: <ARoute>[
      ARoute(
        sourceFilePath: 'lib/example/layouts_container_padding_center_ex.dart',
        title: 'Container',
        description: 'Basic widgets for layout.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Container-class.html',
        },
        child: ContainerExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/layouts_row_col_ex.dart',
        title: 'Row, Column',
        description: 'Align chidren widgets linearly.',
        links: {
          "Youtube video": "https://www.youtube.com/watch?v=RJEnTRBxaSg&t=75s",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Row-class.html',
        },
        child: RowColExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/layouts_wrap_ex.dart',
        title: 'Wrap',
        description: 'Wrap to the next row/column when run out of room.',
        links: {
          "Youtube video": "https://www.youtube.com/watch?v=z5iw2SeFx2M",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Wrap-class.html',
        },
        child: WrapExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/layouts_fractionally_sizedbox_ex.dart',
        title: 'FractionallySizedBox',
        description:
            'Sizing widgets to a fraction of the total available space.',
        links: {"Youtube video": "https://youtu.be/PEsY654EGZ0"},
        child: FractionallySizedBoxExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/layouts_expanded_ex.dart',
        title: 'Expanded, SizedBox',
        description: 'Dividing space by "weights" (flex).',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Expanded-class.html',
          'Youtube video':
              'https://www.youtube.com/watch?v=RJEnTRBxaSg&t=1072s',
        },
        child: ExpandedExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/layouts_stack_ex.dart',
        title: 'Stack',
        description: 'Putting widget on top of another.',
        links: {
          "Youtube video":
              "https://www.youtube.com/watch?v=RJEnTRBxaSg&t=1072s",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Stack-class.html',
        },
        child: StackExample(),
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Lists',
    icon: Icon(Icons.format_list_numbered),
    routes: <ARoute>[
      ARoute(
        sourceFilePath: 'lib/example/lists_list_tile_ex.dart',
        title: 'ListTile',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/ListTile-class.html',
        },
        child: ListTileExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/lists_listview_builder_ex.dart',
        title: 'ListView.builder',
        description: 'Building list items with a builder.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/ListView-class.html',
        },
        child: ListViewBuilderExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/lists_grid_list_ex.dart',
        title: 'GridList',
        links: {
          'Cookbook': 'https://flutter.io/cookbook/lists/grid-lists/',
        },
        child: GridListExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/lists_expansion_tile_ex.dart',
        title: 'ExpansionTile',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/ExpansionTile-class.html',
        },
        child: ExpansionTileExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/lists_swipe_to_dismiss_ex.dart',
        title: 'Swipe to dismiss',
        links: {
          'Cookbook': 'https://flutter.io/cookbook/gestures/dismissible',
        },
        child: ListSwipeToDismissExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/lists_reorderable_ex.dart',
        title: 'Reorderable list',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/ReorderableListView-class.html',
          'Youtube': 'https://youtu.be/3fB1mxOsqJE',
        },
        child: ReorderableListExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/lists_wheel_scroll_view_ex.dart',
        title: 'List Wheel Scroll View',
        description: 'fancy list view',
        links: {
          'Doc':
              'https://api.flutter.dev/flutter/widgets/ListWheelScrollView-class.html',
          'Youtube': 'https://youtu.be/dUhmWAz4C7Y'
        },
        child: ListWheelViewExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/lists_slidable_tile_ex.dart',
        title: 'Slidable list tile',
        description: 'Nice slidabe tile from Flutter Favorite package.',
        links: {'pub.dev': 'https://pub.dev/packages/flutter_slidable'},
        child: SlidableTileExample(),
      ),
      ARoute(
        sourceFilePath: 'lib/example/lists_datatable_ex.dart',
        title: 'DataTable',
        description: 'Showing data in a table.',
        links: {
          'Docs':
              'https://docs.flutter.io/flutter/material/PaginatedDataTable-class.html'
        },
        child: DataTableExample(),
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Appbar',
    icon: RotatedBox(
      child: Icon(Icons.video_label),
      quarterTurns: 2,
    ),
    routes: <ARoute>[
      ARoute(
        child: BasicAppbarExample(),
        sourceFilePath: 'lib/example/appbar_basic_appbar_ex.dart',
        title: 'Basic AppBar',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/AppBar-class.html',
        },
      ),
      ARoute(
        child: BottomAppbarExample(),
        sourceFilePath: 'lib/example/appbar_bottom_appbar_ex.dart',
        title: 'Bottom AppBar and Floating App Button (FAB)',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/BottomNavigationBar-class.html'
        },
      ),
      ARoute(
        child: SliverAppBarExample(),
        sourceFilePath: 'lib/example/appbar_sliver_appbar_ex.dart',
        title: 'Sliver AppBar',
        description: 'Appbar that auto-hides.',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/SliverAppBar-class.html',
          'Medium article':
              'https://flutterdoc.com/animating-app-bars-in-flutter-cf034cd6c68b',
        },
      ),
      ARoute(
        child: AppBarSearchExample(),
        sourceFilePath: 'lib/example/appbar_search_ex.dart',
        title: 'Search',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/SearchDelegate-class.html'
        },
      ),
      ARoute(
        child: BackdropExample(),
        sourceFilePath: 'lib/example/appbar_backdrop_ex.dart',
        title: 'Backdrop',
        description: 'Switching between front and back layer.',
        links: {
          'Medium article':
              'https://medium.com/flutter/decomposing-widgets-backdrop-b5c664fb9cf4'
        },
      ),
      ARoute(
        child: ConvexAppExample(),
        sourceFilePath: 'lib/example/appbar_convex_appbar_ex.dart',
        title: 'Convex Appbar',
        description: 'Nicer-looking appbar (Flutter Favorite package).',
        links: {'Pub.dev': 'https://pub.dev/packages/convex_bottom_bar'},
      ),
      ARoute(
        child: HidableBtmbarExample(),
        sourceFilePath: 'lib/example/appbar_hidable_ex.dart',
        title: 'Hidable bottom bar',
        description: 'Bottom bar that auto hides when scroll down',
        links: {
          'pub.dev': 'https://pub.dev/packages/hidable',
        },
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Navigation',
    icon: Icon(Icons.view_carousel),
    routes: <ARoute>[
      ARoute(
        child: TabsExample(),
        sourceFilePath: 'lib/example/nav_tabs_ex.dart',
        title: 'Tabs',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/TabBar-class.html'
        },
      ),
      ARoute(
        child: DialogsExample(),
        sourceFilePath: 'lib/example/nav_dialogs_ex.dart',
        title: 'Dialogs',
      ),
      ARoute(
        child: RoutesExample(),
        sourceFilePath: 'lib/example/nav_routes_ex.dart',
        title: 'Routes',
        description: 'Jumping between pages.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Navigator-class.html',
          'Youtube video':
              'https://youtu.be/b2fgMCeSNpY?list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd',
        },
      ),
      ARoute(
        child: NavDrawerExample(),
        sourceFilePath: 'lib/example/nav_nav_drawer_header_ex.dart',
        title: 'Navigation Drawer',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/Drawer-class.html',
        },
      ),
      ARoute(
        child: BottomSheetExample(),
        sourceFilePath: 'lib/example/nav_bottom_sheet_ex.dart',
        title: 'Bottom sheet',
        links: {
          'Medium article':
              'https://medium.com/flutter-community/flutter-beginners-guide-to-using-the-bottom-sheet-b8025573c433',
        },
      ),
      ARoute(
        child: BtmTabBarExpl(),
        sourceFilePath: 'lib/example/nav_bottom_tabbar_ex.dart',
        title: 'Bottom tab bar',
      ),
      ARoute(
        child: BottomNavigationBarExample(),
        sourceFilePath: 'lib/example/nav_bottom_navbar_ex.dart',
        title: 'Bottom navigation bar',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/BottomNavigationBar-class.html',
        },
      ),
      ARoute(
        child: PageSelectorExample(),
        sourceFilePath: 'lib/example/nav_pageselector_ex.dart',
        title: 'Page selector',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/TabPageSelector-class.html'
        },
      ),
      ARoute(
        child: DraggableScrollableSheetExample(),
        sourceFilePath: 'lib/example/nav_draggable_scrollable_sheet_ex.dart',
        title: 'DraggableScrollableSheet',
        description: 'Scrollable sheet similar to Google Maps.',
        links: {'Youtube': 'https://www.youtube.com/watch?v=Hgw819mL_78'},
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Async',
    icon: Icon(Icons.timer),
    routes: <ARoute>[
      ARoute(
        child: FutureBuilderExample(),
        sourceFilePath: 'lib/example/async_futurebuilder_ex.dart',
        title: 'FutureBuilder',
        links: {
          'Video on dart futures': 'https://youtu.be/OTS-ap9_aXc',
          'Doc':
              'https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html',
        },
      ),
      ARoute(
        child: StreamBuilderExample(),
        sourceFilePath: 'lib/example/async_streambuilder_ex.dart',
        title: 'StreamBuilder (timer app)',
        description: 'Update UI according to the latest stream value.',
        links: {
          'Video on dart streams': 'https://youtu.be/nQBpOIHE4eE',
          'Doc':
              'https://docs.flutter.io/flutter/widgets/StreamBuilder-class.html',
          'Youtube': 'https://www.youtube.com/watch?v=MkKEWHfy99Y',
        },
      ),
      ARoute(
        child: StreamControllerExample(),
        sourceFilePath: 'lib/example/async_streamcontroller_ex.dart',
        title: 'StreamController',
        description:
            'Receive data from sink and output at stream, two StreamControllers can make a "Bloc".',
        links: {
          'Doc':
              'https://api.dartlang.org/stable/2.1.1/dart-async/StreamController-class.html',
        },
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Animation (basics)',
    icon: Icon(Icons.movie_filter),
    routes: <ARoute>[
      ARoute(
        child: HeroExample(),
        sourceFilePath: 'lib/example/animation_hero_ex.dart',
        title: 'Hero',
        description: 'Hero animation between routes.',
        links: {
          'cookbook':
              'https://flutter.io/docs/development/ui/animations/hero-animations',
          'Youtube video': 'https://www.youtube.com/watch?v=Be9UH1kXFDw',
        },
      ),
      ARoute(
        child: OpacityExample(),
        sourceFilePath: 'lib/example/animation_opacity_ex.dart',
        title: 'Opacity',
        description: 'Making a widget transparent/visible.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Opacity-class.html',
          'Youtube video':
              'https://www.youtube.com/watch?v=9hltevOHQBw&index=5&list=PLOU2XLYxmsIL0pH0zWe_ZOHgGhZ7UasUE',
        },
      ),
      ARoute(
        child: AnimatedIconsExample(),
        sourceFilePath: 'lib/example/animation_animated_icons_ex.dart',
        title: 'AnimatedIcon',
        links: {'Youtube video': 'https://youtu.be/pJcbh8pbvJs'},
      ),
      ARoute(
        child: AnimatedContainerExample(),
        sourceFilePath: 'lib/example/animation_animated_container_ex.dart',
        title: 'AnimatedContainer',
        description:
            'Implicit animation when container property changes, without controllers.',
        links: {
          'Cookbook':
              'https://flutter.dev/docs/cookbook/animation/animated-container',
          'Widget of the Week (YouTube)': 'https://youtu.be/yI-8QHpGIP4',
        },
      ),
      ARoute(
        child: AnimationsPackageExample(),
        sourceFilePath: 'lib/example/animation_animations_pkg_ex.dart',
        title: 'Animations package',
        description: 'Fancy pre-built animations provided by Flutter team.',
        links: {
          'Tutorial by Robert Brunhage': 'https://youtu.be/vWBWfTgUaRI',
          'pub.dev': 'https://pub.dev/packages/animations',
        },
      ),
    ],
  ),
];

const appRoutesAdvanced = <RoutesGroup>[
  RoutesGroup(
    groupName: 'Animation (advanced)',
    icon: Icon(Icons.movie_filter),
    routes: <ARoute>[
      ARoute(
        child: LowLevelAnimationExample(),
        sourceFilePath: 'lib/example/animation_low_level_ex.dart',
        title: 'Low level animation',
        description:
            'Implement animation using low-level Animations, AnimationControllers and Tweens.',
        links: {
          'Tutorial':
              'https://flutter.dev/docs/development/ui/animations/tutorial',
          'Youtube video': 'https://www.youtube.com/watch?v=mdhoIQqS2z0',
        },
      ),
      ARoute(
        child: AnimatedWidgetExample(),
        sourceFilePath: 'lib/example/animation_animated_widget_ex.dart',
        title: 'AnimatedWidget',
        description: 'Easier animtation without addListener() and setState()',
        links: {
          'Tutorial':
              'https://flutter.dev/docs/development/ui/animations/tutorial#simplifying-with-animatedwidget',
          'Youtube video': 'https://www.youtube.com/watch?v=mdhoIQqS2z0',
        },
      ),
      ARoute(
        child: AnimatedBuilderExample(),
        sourceFilePath: 'lib/example/animation_animated_builder_ex.dart',
        title: 'AnimatedBuilder',
        description: 'Similar to AnimatedWidget.',
        links: {
          'Tutorial':
              'https://flutter.dev/docs/development/ui/animations/tutorial#refactoring-with-animatedbuilder',
          'Widget of the Week (YouTube)': 'https://youtu.be/N-RiyZlv8v8',
        },
      ),
      ARoute(
        child: RadialMenuExample(),
        sourceFilePath: 'lib/example/animation_animated_radial_menu_ex.dart',
        title: 'Animated Radial Menu',
        description: 'Easy add radial menu with high-quality animation',
        links: {'Pub package': 'https://pub.dev/packages/animated_radial_menu'},
      ),
      ARoute(
        child: LottieExample(),
        sourceFilePath: 'lib/example/animation_lottie_ex.dart',
        title: 'Lottie',
        description: 'Easily add high-quality animation.',
        links: {
          'Lottie': 'https://airbnb.design/lottie/',
          'Pub package': 'https://pub.dev/packages/lottie',
        },
      ),
      ARoute(
        child: AnimatedTextKitExample(),
        sourceFilePath: 'lib/example/animation_animated_text_kit_ex.dart',
        title: 'Animated Text Kit',
        description:
            'A flutter package with some cool and awesome text animations.',
        links: {
          'Pub package': 'https://pub.flutter-io.cn/packages/animated_text_kit'
        },
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Multimedia',
    icon: Icon(Icons.perm_media),
    routes: <ARoute>[
      ARoute(
        child: ExtendedImageExample(),
        sourceFilePath: 'lib/example/multimedia_extended_image_ex.dart',
        title: 'Extended Image',
        description: 'View and edit images easily.',
        links: {'Pub': 'https://pub.dev/packages/extended_image'},
      ),
      ARoute(
        child: ImagePluginExample(),
        sourceFilePath: 'lib/example/multimedia_image_plugin_ex.dart',
        title: 'Image manipulation',
        links: {
          'pub.dev': 'https://pub.dev/packages/image',
          'Full list of examples':
              'https://github.com/brendan-duncan/image/wiki/Examples',
        },
      ),
      ARoute(
        child: VideoPlayerExample(),
        sourceFilePath: 'lib/example/multimedia_video_player_ex.dart',
        title: 'Video Player',
        description: 'Video/audio player plugin by the flutter team.',
        links: {'Pub': 'https://pub.dev/packages/video_player'},
      ),
      ARoute(
        child: EdgeDetectionExample(),
        sourceFilePath: 'lib/example/multimedia_edge_detection_ex.dart',
        title: 'Edge Detection',
        description: 'Plugin to scan documents.',
        links: {'Pub': 'https://pub.dev/packages/edge_detection'},
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Persistence',
    icon: Icon(Icons.sd_storage),
    routes: <ARoute>[
      ARoute(
        child: SharedPreferenceExample(),
        sourceFilePath: 'lib/example/persistence_preference_ex.dart',
        title: 'Shared preference',
        description: 'Key-value pairs stored locally using shared_preference.',
        links: {
          'Cookbook': 'https://flutter.io/docs/cookbook/persistence/key-value',
        },
      ),
      ARoute(
        child: FileReadWriteExample(),
        sourceFilePath: 'lib/example/persistence_file_rw_ex.dart',
        title: 'Local file read/write',
        description: 'Read and write local file using path_provider.',
        links: {
          'Cookbook':
              'https://flutter.io/docs/cookbook/persistence/reading-writing-files',
        },
      ),
      ARoute(
        child: SqliteExample(),
        sourceFilePath: 'lib/example/persistence_sqlite_ex.dart',
        title: 'SQLite',
        description:
            'A CRUD (Create-Read-Update-Delete) mini todo app using sqflite.',
        links: {
          'Pub package': 'https://pub.dev/packages/sqflite',
        },
      ),
      ARoute(
        child: SembastExample(),
        sourceFilePath: 'lib/example/persistence_sembast_ex.dart',
        title: 'Sembast',
        description: 'NoSQL db, mini todo CRUD app.',
        links: {
          'Pub package': 'https://pub.dev/packages/sembast',
          'ResoCoder blog':
              'https://resocoder.com/2019/04/06/flutter-nosql-database-sembast-tutorial-w-bloc/'
        },
      ),
      ARoute(
        child: HiveExample(),
        sourceFilePath: 'lib/example/persistence_hive_ex.dart',
        title: 'Hive',
        description:
            'Easier NoSQL db with less bolierplate code. Mini todo CRUD app.',
        links: {
          'Documentation': 'https://docs.hivedb.dev',
          'ResoCoder blog':
              'https://resocoder.com/2019/09/30/hive-flutter-tutorial-lightweight-fast-database'
        },
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'State Management',
    icon: Icon(Icons.developer_mode),
    routes: <ARoute>[
      ARoute(
        child: InheritedWidgetExample(),
        sourceFilePath: 'lib/example/state_inherited_widget_ex.dart',
        title: 'InheritedWidget',
        description: 'Access state of widgets up the tree.',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/widgets/InheritedWidget-class.html',
          'Youtube': 'https://www.youtube.com/watch?v=4I68ilX0Y24',
        },
      ),
      ARoute(
        child: ScopedModelExample(),
        sourceFilePath: 'lib/example/state_scoped_model_ex.dart',
        title: 'ScopedModel(deprecated)',
        description: 'Access&mutate state of widgets up the tree.',
        links: {
          "I/O'18 talk": 'https://youtu.be/RS36gBEp8OI?t=680',
          'Youtube': 'https://www.youtube.com/watch?v=-MCeWP3rgI0',
        },
      ),
      ARoute(
        child: BlocExample(),
        sourceFilePath: 'lib/example/state_bloc_ex.dart',
        title: 'Vanilla BLoC pattern',
        description:
            'Combining StreamBuilder, StreamController, and InheritedWidget.',
        links: {
          "I/O'18 talk": 'https://youtu.be/RS36gBEp8OI?t=1090',
          'Video by Reso Coder': 'https://youtu.be/oxeYeMHVLII',
        },
      ),
      ARoute(
        child: BlocLibExample(),
        sourceFilePath: 'lib/example/state_bloc_lib_ex.dart',
        title: 'Flutter bloc',
        description: 'Simpler BLoC implementation with flutter_bloc package.',
        links: {
          'Flutter Europe talk': 'https://youtu.be/knMvKPKBzGE',
          'flutter_bloc doc': 'https://felangel.github.io/bloc/#/coreconcepts',
          'Video by Reso Coder': 'https://youtu.be/LeLrsnHeCZY',
        },
      ),
      ARoute(
        child: ProviderExample(),
        sourceFilePath: 'lib/example/state_provider_ex.dart',
        title: 'Provider',
        description: 'Officially recommended state management solution.',
        links: {
          'Flutter Europe talk': 'https://youtu.be/BulIREvHBWg',
          "I/O'19 talk": 'https://www.youtube.com/watch?v=d_m5csmrf7I',
          'Flutter documentation ':
              'https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple',
          'pub.dev': 'https://pub.dev/packages/provider',
        },
      ),
      ARoute(
        child: StateNotifierFreezedExample(),
        sourceFilePath: 'lib/example/state_state_notifier_freezed_ex.dart',
        title: 'StateNotifier+Freezed',
        description: 'Better ChangeNotifier and better state data class.',
        links: {
          'Tutorial by Andrea Bizzotto':
              'https://codewithandrea.com/videos/flutter-state-management-setstate-freezed-state-notifier-provider/'
        },
      ),
      ARoute(
        child: RiverpodFreezedExample(),
        sourceFilePath: 'lib/example/state_riverpod_freezed_ex.dart',
        title: 'Riverpod+StateNotifier+Freezed',
        description: 'Better than Provider+ChangeNotifier.',
        links: {
          'Tutorial by Resocoder':
              'https://resocoder.com/2020/12/11/flutter-statenotifier-riverpod-tutorial-immutable-state-management/'
        },
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Plugins',
    icon: Icon(Icons.power),
    routes: <ARoute>[
      ARoute(
        child: WebViewExample(),
        sourceFilePath: 'lib/example/plugins_webview_ex.dart',
        title: 'Web View',
        description: 'Open web page inside Flutter app.',
      ),
      ARoute(
        child: LocalAuthExample(),
        sourceFilePath: 'lib/example/plugins_local_auth_ex.dart',
        title: 'Local auth',
        description: 'Authenticate with biometrics(fingerprint).',
      ),
      ARoute(
        child: ShimmerExample(),
        sourceFilePath: 'lib/example/plugins_shimmer_ex.dart',
        title: 'Shimmer effect',
        links: {'pub.dev': 'https://pub.dev/packages/shimmer'},
      ),
      ARoute(
        child: SharePlusExample(),
        sourceFilePath: 'lib/example/plugins_share_plus_ex.dart',
        title: "Share Plus",
        links: {'pub.dev': 'https://pub.dev/packages/share_plus'},
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Rich Text',
    icon: Icon(Icons.wysiwyg),
    routes: <ARoute>[
      ARoute(
        child: MarkdownExample(),
        sourceFilePath: 'lib/example/richtext_markdown_ex.dart',
        title: 'Markdown rendering',
      ),
      ARoute(
        child: SelectableExample(),
        sourceFilePath: 'lib/example/richtext_selectable_ex.dart',
        title: 'Selectable package',
        description:
            "Make any widget's text selectable, and define custom selection menus.",
        links: {'pub.dev': 'https://pub.dev/packages/selectable'},
      ),
      ARoute(
        child: CodeHighlightExample(),
        sourceFilePath: 'lib/example/richtext_code_highlight_ex.dart',
        title: 'Code highlight',
        description: 'Syntax highlighting for different programming languages',
        links: {'pub.dev': 'https://pub.dev/packages/flutter_highlight'},
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Charts',
    icon: Icon(Icons.show_chart),
    routes: <ARoute>[
      ARoute(
        child: TimeseriesChartExample(),
        sourceFilePath: 'lib/example/charts_time_series_ex.dart',
        title: 'Time Series Chart',
        links: {
          'Demo gallery': 'https://google.github.io/charts/flutter/gallery.html'
        },
      ),
      ARoute(
        child: PieChartExample(),
        sourceFilePath: 'lib/example/charts_pie_chart_ex.dart',
        title: 'Pie Chart',
        links: {
          'Demo gallery': 'https://google.github.io/charts/flutter/gallery.html'
        },
      ),
      ARoute(
        child: FlLineChartExample(),
        sourceFilePath: 'lib/example/charts_fl_line_chart_ex.dart',
        title: 'LineChart with fl_chart',
        links: {
          'doc':
              'https://github.com/imaNNeoFighT/fl_chart/blob/master/repo_files/documentations/line_chart.md'
        },
      ),
      ARoute(
        child: FlBarChartExample(),
        sourceFilePath: 'lib/example/charts_fl_bar_chart_ex.dart',
        title: 'BarChart with fl_chart',
        links: {
          'doc':
              'https://github.com/imaNNeoFighT/fl_chart/blob/master/repo_files/documentations/bar_chart.md'
        },
      ),
      ARoute(
        child: FlPieChartExample(),
        sourceFilePath: 'lib/example/charts_fl_pie_chart_ex.dart',
        title: 'PieChart with fl_chart',
        links: {
          'doc':
              'https://github.com/imaNNeoFighT/fl_chart/blob/master/repo_files/documentations/pie_chart.md'
        },
      ),
      ARoute(
        child: GraphViewExample(),
        sourceFilePath: 'lib/example/charts_graphview_ex.dart',
        title: 'GraphView',
        links: {'pub.dev': 'https://pub.dev/packages/graphview'},
      ),
      ARoute(
        child: HeatmapCalendarExample(),
        sourceFilePath: 'lib/example/charts_heatmap_calendar_ex.dart',
        title: 'Heatmap Calendar (deprecated)',
        links: {'pub.dev': 'https://pub.dev/packages/heatmap_calendar'},
      ),
      ARoute(
        child: NewHeatmapCalendarExample(),
        sourceFilePath: 'lib/example/charts_new_heatmap_calendar_ex.dart',
        title: 'Heatmap Calendar(new)',
        links: {'pub.dev': 'https://pub.dev/packages/flutter_heatmap_calendar'},
      ),
      ARoute(
        child: RadarChartExample(),
        sourceFilePath: 'lib/example/charts_radar_chart_ex.dart',
        title: 'Radar Chart',
        links: {'pub.dev': 'https://pub.dev/packages/flutter_radar_chart'},
      ),
    ],
  ),
  RoutesGroup(
    groupName: 'Networking',
    icon: Icon(Icons.http),
    routes: <ARoute>[
      ARoute(
        child: RestApiFetchExample(),
        sourceFilePath: 'lib/example/networking_rest_api_fetch_ex.dart',
        title: 'Fetching data',
        links: {
          'Cookbook': 'https://flutter.dev/docs/cookbook/networking/fetch-data'
        },
      ),
      ARoute(
        child: RestApiSendExample(),
        sourceFilePath: 'lib/example/networking_rest_api_send_ex.dart',
        title: 'Sending data',
        links: {
          'Cookbook': 'https://flutter.dev/docs/cookbook/networking/send-data'
        },
      ),
      ARoute(
        child: RestApiHackerNewsExample(),
        sourceFilePath: 'lib/example/networking_hacker_news_ex.dart',
        title: 'Hacker News',
        description: 'A full REST API example.',
        links: {'Hacker News API': 'https://github.com/HackerNews/API'},
      ),
      ARoute(
        child: RestApiGoogleBooksExample(),
        sourceFilePath: 'lib/example/networking_googlebooks_ex.dart',
        title: 'Google Books',
        description: 'Another REST example using the Google books seach API.',
        links: {'Hacker News API': 'https://github.com/HackerNews/API'},
      ),
      ARoute(
        sourceFilePath: 'lib/example/networking_chatgpt_ex.dart',
        title: "ChatGPT",
        description: 'Interact with ChatGPT in Flutter',
        links: {'pub.dev': 'https://pub.dev/packages/chat_gpt_sdk'},
        child: ChatGptExample(),
      ),
    ],
  ),
];

final kAllRouteGroups = <RoutesGroup>[
  ...kMyAppRoutesBasic,
  ...appRoutesAdvanced,
];

final allRoutes = <ARoute>[
  ...kAllRouteGroups.expand((group) => group.routes),
];

final kRouteNameToRoute = <String, ARoute>{
  for (final route in allRoutes) route.routeName: route
};

final kRouteNameToRouteGroup = <String, RoutesGroup>{
  for (final group in kAllRouteGroups)
    for (final route in group.routes) route.routeName: group
};

// This app's root-level routing table.
final kAppRoutingTable = <String, WidgetBuilder>{
  Navigator.defaultRouteName: (context) => homeRoute,
  aboutRoute.routeName: (context) => aboutRoute,
  for (ARoute route in allRoutes) route.routeName: (context) => route,
};
