import 'package:centro_cristiano_gye/providers/MainNavigationIndexProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {

    final mainnavigationindexprovider = Provider.of<MainNavigationIndexProvider>(context);
    
    return NavigationBarTheme(
      data: Theme.of(context).navigationBarTheme,
      child: NavigationBar(
        animationDuration: const Duration(milliseconds: 1000),
        backgroundColor: Colors.black,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        height: 60,
        elevation: 0,
        selectedIndex: mainnavigationindexprovider.current,
        onDestinationSelected: (int index) {
          mainnavigationindexprovider.current = index;
        },
        destinations: const[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline),
            selectedIcon: Icon(Icons.chat_bubble),
            label: 'Mensajes',
          ),
          NavigationDestination(
            // icon: Icon(Icons.favorite_border),
            // icono desde una imagen network
            icon: ImageIcon(
              // NetworkImage('https://www.ccgye.org/wp-content/uploads/2022/01/CCG-black.png'),
              NetworkImage('https://i.gifer.com/6mz.gif'),
              color: Colors.white,
              size: 30,
            ),
            selectedIcon: ImageIcon(
              // NetworkImage('https://i.gifer.com/6ks.gif'),
              // NetworkImage('https://i.gifer.com/6mz.gif'),
              NetworkImage('https://i.gifer.com/2iFb.gif'),
              color: Colors.white,
              size: 40,
            ),
            label: 'Donar',
          ),
          NavigationDestination(
            icon: Icon(Icons.my_library_music_outlined),
            selectedIcon: Icon(Icons.my_library_music),
            label: 'Musica',
          ),
          NavigationDestination(
            icon: Icon(Icons.map_outlined),
            selectedIcon: Icon(Icons.map),
            label: 'Campus',
          ),
        ],
      ),
    );
  }
}