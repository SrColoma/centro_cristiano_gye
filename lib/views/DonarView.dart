import 'package:centro_cristiano_gye/components/CustomImageCard.dart';
import 'package:centro_cristiano_gye/components/CustomShortCard.dart';
import 'package:flutter/material.dart';

class DonarView extends StatelessWidget {
  const DonarView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: DefaultTabController(
            length: 2,
            child: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: "Donativos",
                ),
                Tab(
                  text: "Paypal",
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              CustomImageCard(),
              CustomImageCard(),
              CustomImageCard(),
              CustomImageCard(),
              CustomImageCard(),
            ]
          )
        )
      ],
    );
  }
}