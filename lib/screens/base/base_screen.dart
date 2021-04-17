import 'package:farmacia_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  void setPage(int pagina) {
    setState(() {
      _currentPage = pagina;
      _pageController.animateToPage(pagina,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomeScreen(),
          Container(color: Colors.grey),
          Container(color: Colors.red),
          Container(color: Colors.blueAccent),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        onTap: (value) {
          print(value);
          setPage(value);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(_currentPage == 0 ? Icons.home : Icons.home_outlined),
              label: 'Início'),
          BottomNavigationBarItem(
            icon: Icon(_currentPage == 1
                ? Icons.local_offer
                : Icons.local_offer_outlined),
            label: 'Ofertas',
          ),
          BottomNavigationBarItem(
              icon: Icon(_currentPage == 2 ? Icons.shopping_bag : Icons.shopping_bag_outlined), label: 'Compras'),
          BottomNavigationBarItem(
            icon: Icon(
              _currentPage == 3 ? Icons.more_horiz : Icons.more_horiz_outlined,
            ),
            label: 'Mais',
          ),
        ],
      ),
    );
  }
}
