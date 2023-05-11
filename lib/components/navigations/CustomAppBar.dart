import 'package:centro_cristiano_gye/pages/LoginPage.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final String title;

  const CustomAppBar({
    Key? key,
    // required this.title
  }) : super(key: key);


  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leadingWidth: 20,
      // leading: Image.network(
      //   "http://www.ccgye.org/wp-content/uploads/2020/04/loguito-footer2.png",
      //   // scale: 2,
      // ),
      title: Text("Centro Cristiano Guayaquil"),
      actions: [
        
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            Navigator.pushNamed(context, LoginPage.routeName);
          },
        ),

      ],
      
    );
  }
}
