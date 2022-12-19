import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<String> _images = [
    "assets/perro1.jpg",
    "assets/perro2.jpg",
    "assets/perro3.jpg"
  ];
  int _selectedIndex = 2;
  static TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Paseos',
      style: optionStyle,
    ),
    Text(
      'Index 1: Muerte',
      style: optionStyle,
    ),
    Column(
      children: [
        Container(
          width: double.infinity,
          height: 350,
          child: Swiper(
            viewportFraction: 0.8,
            scale: 0.9,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                _images[index],
                fit: BoxFit.fill,
              );
            },
            itemCount: 3,
            pagination: SwiperPagination(),
            control: SwiperControl(),
          ),
        ),
        Text(
          'Index 2: Home',
          style: optionStyle,
        ),
      ],
    ),
    Text(
      'Index 3: Veterinaria',
      style: optionStyle,
    ),
    Text(
      'Index 4: Baños',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 58, 3, 1),
        title: Icon(Icons.donut_large),
      ),
      body: Center(
        child: Container(child: _widgetOptions.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(254, 246, 234, 1),
            icon: Icon(
              Icons.nordic_walking_outlined,
            ),
            label: 'Paseos',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(254, 246, 234, 1),
            icon: Icon(Icons.details_sharp),
            label: 'Muerte',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(254, 246, 234, 1),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(254, 246, 234, 1),
            icon: Icon(Icons.volunteer_activism),
            label: 'Veterinaria',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(254, 246, 234, 1),
            icon: Icon(Icons.shower_rounded),
            label: 'Baños',
          ),
        ],
        selectedItemColor: Color.fromRGBO(249, 142, 44, 1),
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
