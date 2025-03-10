import 'package:flutter/material.dart';
import 'package:groceryapp/presentation/screen/cart_screen.dart';
import 'package:groceryapp/presentation/screen/category/category_screen.dart';
import 'package:groceryapp/presentation/screen/home_screen.dart';
import 'package:groceryapp/presentation/screen/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body:  TabBarView(children: [
            HomeScreen(),
            CategoryScreen(),
            CartScreen(),
            ProfileScreen(),]),
          
        bottomNavigationBar: TabBar(
         tabs:[
            Tab(
                icon: Icon(
                  Icons.home,
                ),
                text: "Home"),
            Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: "Category"),
            Tab(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                text: "Cart"),
            Tab(
                icon: Icon(
                  Icons.person,
                ),
                text: "Profile"),
          ],
          

          labelColor: const Color.fromARGB(255, 223, 230, 229),
          unselectedLabelColor: const Color.fromARGB(255, 41, 10, 10),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),

          
        ),
      ),
    );
  }
}
