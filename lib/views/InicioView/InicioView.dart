import 'package:centro_cristiano_gye/components/cards/CustomCard.dart';
import 'package:centro_cristiano_gye/views/InicioView/providers/InicioNavigationIndexProvider.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/AprendeTabView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/DonarTabView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/GruposTabView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/IglesiaTabView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




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
class InicioView extends StatelessWidget {
  const InicioView({super.key});

  @override
  Widget build(BuildContext context) {

    final homeNavigationIndexProvider = Provider.of<InicioNavigationIndexProvider>(context);

    return DefaultTabController(
      length: 4,
      initialIndex: homeNavigationIndexProvider.current,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: TabBar(
              tabs: [
                Tab(text: "Iglesia",),
                Tab(text: "Aprende",),
                Tab(text: "Grupos",),
                Tab( text: "Donar",),
              ],
              onTap: (value) {
                homeNavigationIndexProvider.current = value;
              },
            ),
          ),
          homeNavigationIndexProvider.pages[homeNavigationIndexProvider.current],
          // SliverToBoxAdapter(
          //   child: TabBarView(
          //     children: [
          //       IglesiaTabView(),
          //       AprendeTabView(),
          //       GruposTabView(),
          //       DonarTabView(),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}