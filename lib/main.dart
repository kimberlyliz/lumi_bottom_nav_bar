import 'dart:ui';
import 'package:flutter/material.dart';
 
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BotNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 
class BotNavBar extends StatefulWidget {
  const BotNavBar({super.key});
 
  @override
  State<BotNavBar> createState() => _BotNavBarState();
}
 
class _BotNavBarState extends State<BotNavBar> {
//Criando o BottomNavigationBar
  int _currentIndex = 0; 
   
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
     
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF000000),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color.fromARGB(255, 163, 163, 163),
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Início',
            icon: ImageIcon(
              AssetImage("assets/home512.png"),
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/home512cheio.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: ImageIcon(
              AssetImage("assets/chat512.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Feed',
            icon: ImageIcon(
              AssetImage("assets/lumi_icon.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favoritos',
            icon: ImageIcon(
              AssetImage("assets/heart512.png"),
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/heart512cheio.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Buscar',
            icon: ImageIcon(
              AssetImage("assets/lupa512.png"),
            ),
            //activeIcon: ImageIcon(AssetImage('assets/lupa512forte.png'),),
          )
        ],
      ),
    );
  }
}
