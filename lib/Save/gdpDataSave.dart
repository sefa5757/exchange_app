import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_5/databaseHelpers/chartDataDbHelper.dart';
import 'package:flutter_application_5/databaseHelpers/gdpDataDbHelper.dart';

import '../models/chartData.dart';
import '../models/gdpData.dart';


class gdpDataSave extends StatefulWidget {
  gdpDataSave({Key? key}) : super(key: key);

  @override
  State<gdpDataSave> createState() => _gdpDataSave();
}

class _gdpDataSave extends State<gdpDataSave> {
  var containent= TextEditingController();
  var gdp= TextEditingController();
  


  var helper = GDPDataDbHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          'Veri Kayıt Ekranı',
          style: TextStyle(
              fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: Center(
                    child: Image.asset(
                  "images/Muhasebem.png",
                  height: 100,
                  width: 100,
                )),
              ),
              TextFormField(
                controller: containent,
                cursorColor: Theme.of(context).cursorColor,
                maxLength: 20,
                decoration: InputDecoration(
                  labelText: 'GİDER',
                  labelStyle: TextStyle(
                      color: Colors.blue.shade500,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  suffixIcon: const Icon(
                    Icons.check_circle,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
                            TextFormField(
                controller: gdp,
                cursorColor: Theme.of(context).cursorColor,
                maxLength: 20,
                decoration: InputDecoration(
                  labelText: 'x ',
                  labelStyle: TextStyle(
                      color: Colors.blue.shade500,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  suffixIcon: const Icon(
                    Icons.check_circle,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    var entity = GDPData(  containent.text.toString(),
                      int.parse(gdp.text.toString()),);
                    helper.insertEntity(entity);
                    Navigator.pop(context);
                  },
                  child: const Text("SAVE"))
            ],
          ),
        ),
      ),
    );
  }
}
