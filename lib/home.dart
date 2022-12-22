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
  static TextStyle optionStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(249, 142, 44, 1));
  static List<Widget> _widgetOptions = <Widget>[
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Paseos paquete plata',
              style: optionStyle,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/perro1.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Valor: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("40.0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Tiempo Limite: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("1 mes")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Paseos: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("4 paseos")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Promoción: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Baño a mitad de precio")
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Paseos paquete Oro',
              style: optionStyle,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/perro2.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Valor: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("90.0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Tiempo Limite: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("2 meses")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Paseos: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("8 paseos")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Promoción: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Baño y corte de pelo gratis")
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Paseos paquete Platino',
              style: optionStyle,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/perro3.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Valor: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("250.0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Tiempo Limite: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("5 meses")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Paseos: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("20 paseos")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Promoción: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            "3 baños, 1 corte de pelo y \nrevisión veterinaria gratis")
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
    Text(
      'Index 1: Muerte',
      style: optionStyle,
    ),
    // Home
    SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
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
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Text(
              'Paseos',
              style: optionStyle,
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image(
                      image: AssetImage("assets/perro1.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image(
                      image: AssetImage("assets/perro1.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image(
                      image: AssetImage("assets/perro1.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Text(
              'Baños',
              style: optionStyle,
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image(
                      image: AssetImage("assets/perro2.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image(
                      image: AssetImage("assets/perro2.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image(
                      image: AssetImage("assets/perro2.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Text(
              'Veterinaria',
              style: optionStyle,
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image(
                      image: AssetImage("assets/perro3.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image(
                      image: AssetImage("assets/perro3.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image(
                      image: AssetImage("assets/perro3.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),

    //Veteriinaria
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Veterinaria paquete plata',
              style: optionStyle,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/perro1.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Valor: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("70.0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Tiempo Limite: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("6 meses")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Veterinaria: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("2 consultas")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Promoción: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Baño y paseo gratis")
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Veterinaria paquete Oro',
              style: optionStyle,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/perro2.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Valor: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("100.0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Tiempo Limite: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("12 meses")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Veterinaria: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            "2 consutlas, 2 desparatizaciones y 5 vacunas (eleccion)")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Promoción: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("2 paseos y corte de pelo gratis")
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Veterinaria paquete Platino',
              style: optionStyle,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/perro3.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Valor: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("300.0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Tiempo Limite: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("24 meses")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Veterinaria: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            "4 baños. 4 desparasitaciones, 6 corte de uñas y 5 vacunas (eleccion)")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Promoción: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("5 paseos, 6 corte de pelo y 6 baños gratis")
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),

    // Baños
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Baños paquete plata',
              style: optionStyle,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/perro1.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Valor: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("50.0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Tiempo Limite: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("3 meses")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Baños: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("5 baños")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Promoción: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Baño a mitad de precio")
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Baños paquete Oro',
              style: optionStyle,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/perro2.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Valor: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("100.0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Tiempo Limite: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("4 meses")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Baños: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("5 baños")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Promoción: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("2 paseos y corte de pelo gratis")
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Baños paquete Platino',
              style: optionStyle,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/perro3.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Valor: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("300.0")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Tiempo Limite: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("12 meses")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Baños: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("15 baños")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Promoción: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            "3 paseos, 2 cortes de pelo gratis y \nrevisión veterinaria gratis")
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
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
      body: Container(child: _widgetOptions.elementAt(_selectedIndex)),
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
