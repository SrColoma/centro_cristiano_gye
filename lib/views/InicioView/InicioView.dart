import 'package:centro_cristiano_gye/components/cards/CustomCard.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/AprendeTabView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/DonarTabView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/GruposTabView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/IglesiaTabView.dart';
import 'package:flutter/material.dart';




class InicioView extends StatelessWidget {
  const InicioView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> tabs = <String>[
      "Iglesia",
      "Aprende",
      "Grupos",
      "Donar",
    ];

    final List<Widget> tabViews = [
      IglesiaTabView(),
      AprendeTabView(),
      GruposTabView(),
      DonarTabView(),
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: TabBar(
            tabs: tabs.map((String name) => Tab(text: name)).toList(),
          ),
        body: TabBarView(
          children: tabs.map((String name) {
            return SafeArea(
              top: false,
              bottom: false,
              child: tabViews[tabs.indexOf(name)],
              // child: ListView(
              //   key: PageStorageKey<String>(name),
              //   children: [
              //     tabViews[tabs.indexOf(name)],
              //   ],
              // ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

    // return DefaultTabController(
    //   length: tabs.length,
    //   child: NestedScrollView(
    //     headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
    //       // These are the slivers that show up in the "outer" scroll view.
    //       return <Widget>[
    //         SliverOverlapAbsorber(
    //           handle:
    //               NestedScrollView.sliverOverlapAbsorberHandleFor(context),
    //           sliver: SliverToBoxAdapter(
    //             child: TabBar(
    //               // These are the widgets to put in each tab in the tab bar.
    //               tabs: tabs.map((String name) => Tab(text: name)).toList(),
    //             )
    //           ),
    //         ),
    //       ];
    //     },
    //     body: TabBarView(
    //         children: tabs.map((String name) {
    //           return SafeArea(
    //             top: false,
    //             bottom: false,
    //             child: LayoutBuilder(
    //               builder: (BuildContext context, BoxConstraints constraints) {
    //                 return CustomScrollView(
    //                   key: PageStorageKey<String>(name),
    //                   slivers: <Widget>[
    //                     tabViews[tabs.indexOf(name)],
    //                   ],
    //                 );
    //               },
                
    //             ),
    //           );
    //         }).toList(),
    //       ),
    //   ),
    // );
//   }
// }
// class InicioView extends StatelessWidget {
//   const InicioView({super.key});

//   @override
//   Widget build(BuildContext context) {

//     final homeNavigationIndexProvider = Provider.of<InicioNavigationIndexProvider>(context);

//     return CustomScrollView(
//       slivers: [
//         SliverToBoxAdapter(
//           child: DefaultTabController(
//             length: 4,
//             initialIndex: homeNavigationIndexProvider.current,
//             child: TabBar(
//               tabs: [
//                 Tab(text: "Iglesia",),
//                 Tab(text: "Aprende",),
//                 Tab(text: "Grupos",),
//                 Tab( text: "Donar",),
//               ],
//               onTap: (value) {
//                 homeNavigationIndexProvider.current = value;
//               },
//             ),
//           ),
//         ),
//         // homeNavigationIndexProvider.pages[homeNavigationIndexProvider.current],
//         // TabBarView(children: children)
//       ],
//     );
//   }
// }


// class InicioView extends StatelessWidget {
//   const InicioView({super.key});

//   @override
//   Widget build(BuildContext context) {

//     final homeNavigationIndexProvider = Provider.of<InicioNavigationIndexProvider>(context);

//     return DefaultTabController(
//       length: 4,
//       initialIndex: homeNavigationIndexProvider.current,
//       child: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: TabBar(
//               tabs: [
//                 Tab(text: "Iglesia",),
//                 Tab(text: "Aprende",),
//                 Tab(text: "Grupos",),
//                 Tab( text: "Donar",),
//               ],
//               onTap: (value) {
//                 homeNavigationIndexProvider.current = value;
//               },
//             ),
//           ),
//           // homeNavigationIndexProvider.pages[homeNavigationIndexProvider.current],
//           // SliverToBoxAdapter(
//           //   child: TabBarView(
//           //     children: [
//           //       IglesiaTabView(),
//           //       AprendeTabView(),
//           //       GruposTabView(),
//           //       DonarTabView(),
//           //     ],
//           //   ),
//           // )
//         ],
//       ),
//     );
//   }
// }