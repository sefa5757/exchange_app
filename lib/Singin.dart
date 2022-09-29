import 'package:flutter/material.dart';
import 'package:flutter_application_5/Login.dart';

class Singin extends StatefulWidget {
  Singin({Key? key}) : super(key: key);

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayıt Ol'),
      ),
      backgroundColor: Color.fromARGB(255, 170, 224, 225),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 30),
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
                padding: const EdgeInsets.only(right: 270, top: 25),
                child: Text(
                  'Kullanım Tipi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 20,
                child: ListTile(
                  title: const Text('Bireysel Kullanım'),
                ),
              ),
              Container(
                height: 20,
                child: ListTile(
                  title: const Text('Küçük İşletme'),
                ),
              ),
              Container(
                height: 20,
                child: ListTile(
                  title: const Text('Orta büyük işletme'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Container(
                        width: 200,
                        child: Center(
                            child: Text('Kayıt Ol',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 170, 224, 225),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
