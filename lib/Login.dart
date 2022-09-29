import 'package:flutter/material.dart';
import 'package:flutter_application_5/Singin.dart';
import 'package:flutter_application_5/HomePage.dart';
import 'package:flutter_application_5/CircularChart.dart';
import 'package:flutter_application_5/ColumnChart.dart';
import 'package:flutter_application_5/RowChartMonth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 224, 225),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 30),
                  child: Container(
                    height: 130,
                    width: 130,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/Logoson.jpeg',
                      ),
                    ),
                  )),
              TextFormField(
                cursorColor: Theme.of(context).cursorColor,
                initialValue: 'example@gmail.com',
                decoration: InputDecoration(
                  labelText: 'E-posta',
                  labelStyle: TextStyle(
                      color: Color.fromARGB(255, 83, 34, 163),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  suffixIcon: Icon(Icons.account_box),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              TextFormField(
                cursorColor: Theme.of(context).cursorColor,
                initialValue: '***********',
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  labelStyle: TextStyle(
                      color: Color.fromARGB(255, 83, 34, 163),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  suffixIcon: Icon(
                    Icons.password,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 235),
                        child: Text('Şifremi Unuttum',
                            style: TextStyle(color: Colors.black)),
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                        width: 200,
                        child: Center(
                            child: Text('Giriş',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 170, 224, 225),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))))),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: (Container(
                        child: Text('Üye değilim',
                            style: TextStyle(
                              color: Colors.black,
                            )),
                      )),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Singin()));
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: const Text(
                        'Kayıt Ol ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
