import 'package:flutter/material.dart';
import 'package:myapp/service/auth_service.dart';
import 'package:myapp/screen/cart_screen.dart';
import 'package:myapp/widget/favorite_screen.dart';
import 'package:myapp/widget/list_product.dart';
import 'package:myapp/widget/order_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _authService = AuthService();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _authService.fetchUserData();

    _pages = [
      const ListProduct(),
      const OrderProduct(),
      const FavoriteScreen(),
      const CartScreen()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {Navigator.pushNamed(
                    context,
                    '/profile',
                  );},
          icon: const Icon(Icons.person_rounded),
        ),
        actions: [
          SizedBox(
            width: 80,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: SingleChildScrollView(
        child: BottomNavigationBar(
          iconSize: 24,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: const Color(0xffA95EFA),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            for (int i = 0; i < _pages.length; i++)
              BottomNavigationBarItem(
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: _selectedIndex == i
                          ? const Color.fromARGB(255, 223, 223, 223)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    [
                      Icons.home,
                      Icons.shopping_bag,
                      Icons.favorite,
                      Icons.shopping_cart,
                    ][i],
                    size: 24,
                    color: _selectedIndex == i ? Colors.blueGrey : Colors.black,
                  ),
                ),
                label: ['Home', 'order', 'favorite', 'Cart'][i],
              ),
          ],
        ),
      ),
    );
  }
}
