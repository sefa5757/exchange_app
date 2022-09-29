import 'package:flutter/material.dart';
import 'package:flutter_application_5/databaseHelpers/chartDataDbHelper.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

import 'models/chartData.dart';

class RowChartMonth extends StatefulWidget {
  RowChartMonth({Key? key}) : super(key: key);

  @override
  State<RowChartMonth> createState() => _RowChartMonthState();
}

class _RowChartMonthState extends State<RowChartMonth> {

  List<ChartData> _chartData = [];
  ChartDataDbHelper _chartDataDbHelper=ChartDataDbHelper();

  @override
  void initState() {
    super.initState();
    getChartData();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Column(
      children: [
        Center(
            child: Container(
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    series: <CartesianSeries>[
              ColumnSeries<ChartData, String>(
                  dataSource: _chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y),
              ColumnSeries<ChartData, String>(
                  dataSource: _chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y1),
            ]))),
        Container(
            child: Text(
                'Bütçem                                                                                      0.00₺'),
            height: 20,
            width: 420,
            color: Colors.blue.shade500),
        Container(
            child: Text(
                '3 Nisan                                                                               (Bugün)Pazar'),
            height: 23,
            width: 420,
            color: Colors.blue.shade300),
        DataTable(
          columns: [
            DataColumn(
                label: Text('Gider',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Tarih',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Tutar',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('Birikim')),
              DataCell(Text('03.04.2022')),
              DataCell(Text('3000')),
            ]),
            DataRow(cells: [
              DataCell(Text('Nakit')),
              DataCell(Text('15.04.2022')),
              DataCell(Text('2500')),
            ]),
            DataRow(cells: [
              DataCell(Text('Banka')),
              DataCell(Text('15.04.2022')),
              DataCell(Text('2300')),
            ]),
            DataRow(cells: [
              DataCell(Text('Borç Alacak')),
              DataCell(Text('22.04.2022')),
              DataCell(Text('2000')),
            ]),
            DataRow(cells: [
              DataCell(Text('Kredi Kartı')),
              DataCell(Text('22.04.2022')),
              DataCell(Text('1500')),
            ]),
          ],
        ),
      ],
    ));
  }
  Future getChartData() async {
    // await _chartDataDbHelper.insertEntity( ChartData('Nisan', 128, 129, 101));
   // await _chartDataDbHelper.deleteEntity(1);
    var result = await _chartDataDbHelper.getEntities();
    setState(() {
      _chartData=[result.cast().elementAt(0)];
    });
  }
}

