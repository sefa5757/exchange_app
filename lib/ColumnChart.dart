import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

import 'databaseHelpers/gdpDataDbHelper.dart';
import 'models/gdpData.dart';

class ColumnChart extends StatefulWidget {
  ColumnChart({Key? key}) : super(key: key);

  @override
  State<ColumnChart> createState() => _ColumnChartState();
}

class _ColumnChartState extends State<ColumnChart> {
List<GDPData> _chartData = [];
  late TooltipBehavior _tooltipBehavior;
  GDPDataDbHelper _gdpDataDbHelper=GDPDataDbHelper();

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
    getChartData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
                child: Scaffold(
              body: SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: 'Sütun Grafik'),
                tooltipBehavior: _tooltipBehavior,
                series: <ChartSeries>[
                  BarSeries<GDPData, String>(
                      name: '',
                      dataSource: _chartData,
                      xValueMapper: (GDPData gdp, _) => gdp.containent,
                      yValueMapper: (GDPData gdp, _) => gdp.gdp,
                      dataLabelSettings: DataLabelSettings(
                        isVisible: true,
                      ),
                      enableTooltip: true)
                ],
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(
                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                  numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
                ),
              ),
            )),
          ),
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
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Tarih',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Tutar',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
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
      ),
    );
  }

   Future getChartData() async {
      // await _gdpDataDbHelper.insertEntity(GDPData('Yakıt', 700));
    //  await _gdpDataDbHelper.insertEntity(GDPData('Aidat', 300));
     // await _gdpDataDbHelper.insertEntity(GDPData('Kira', 2500));
     // await _gdpDataDbHelper.insertEntity(GDPData('Elektrik', 300));
     //await _gdpDataDbHelper.deleteEntity(1);
    var result = await _gdpDataDbHelper.getEntities();
    setState(() {
      _chartData = result.cast();
    });
  }
}

