import 'package:flutter/material.dart';
import 'package:flutter_application_5/CircularChart.dart';
import 'package:flutter_application_5/ColumnChart.dart';
import 'package:flutter_application_5/RowChartMonth.dart';
import 'package:flutter_application_5/RowChartYears.dart';
import 'package:flutter_application_5/Save/gdpDataSave.dart';

import 'Save/chartDataSave.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 170, 224, 225),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 130,
                  width: 130,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/Logoson.jpeg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CircularChart(
                                      title: '',
                                    )));
                          },
                          child: Text(
                            'Dairesel Grafik',
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0),
                                      side:
                                          BorderSide(color: Colors.red))))),
                    ),


                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ColumnChart()));
                          },
                          child: Text(
                            'S??tun Grafik',
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0),
                                      side:
                                          BorderSide(color: Colors.red))))),
                    ),

                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RowChartMonth()));
                          },
                          child: Text(
                            'Ayl??k Sat??r Grafik',
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0),
                                      side:
                                          BorderSide(color: Colors.red))))),
                    ),

                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RowChartYear()));
                          },
                          child: Text(
                            'Y??ll??k Sat??r Grafik',
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0),
                                      side:
                                          BorderSide(color: Colors.red))))),
                    ),
                    
                  ],
                ),
                
                
              ),
              Row(
                children: [
                                     Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => gdpDataSave()));
                          },
                          child: Text(
                            'gdpData Kay??t',
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0),
                                      side:
                                          BorderSide(color: Colors.red))))),
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => chartDataSave()));
                          },
                          child: Text(
                            'chart data Kay??t',
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0),
                                      side:
                                          BorderSide(color: Colors.red))))),
                    ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text("Muhasebem'e Ho??geldiniz",
                    style: TextStyle(
                        color: Color.fromARGB(255, 83, 34, 163),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ));
  }
}
