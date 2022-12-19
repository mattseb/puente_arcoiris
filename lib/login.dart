import 'package:flutter/material.dart';

void main() => runApp(const Login());

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(254, 246, 234, 1),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50, top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Puente Arcoiris',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(249, 142, 44, 1),
                      fontSize: 20,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.italic),
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 95,
                    backgroundImage: AssetImage('assets/perro_perfil.png'),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Ingrese su usuario",
                          labelText: "Usuario",
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Ingrese su contraseña",
                            labelText: "Contraseña",
                            fillColor: Colors.white,
                            filled: true),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, "/home"),
                    child: Text("Login"))
              ],
            ),
          ),
        ));
  }
}
