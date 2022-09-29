import 'package:flutter/material.dart';
import 'package:flutter_application_5/databaseHelpers/gdpDataDbHelper.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'models/gdpData.dart';

class CircularChart extends StatefulWidget {
  const CircularChart({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CircularChart> createState() => _CircularChartState();
}

class _CircularChartState extends State<CircularChart> {
  List<GDPData> _chartData = [];
  late TooltipBehavior _tooltipBehavior;
  GDPDataDbHelper _gdpDataDbHelper=GDPDataDbHelper();

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
    getChartData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: 400,
            child: SfCircularChart(
              title: ChartTitle(
                text: 'Dairesel Grafik',
              ),
              legend: Legend(
                  isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
              tooltipBehavior: _tooltipBehavior,
              series: <CircularSeries>[
                DoughnutSeries<GDPData, String>(
                  dataSource: _chartData,
                  xValueMapper: (GDPData data, _) => data.containent,
                  yValueMapper: (GDPData data, _) => data.gdp,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                  ),
                  enableTooltip: true,
                )
              ],
            ),
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
                DataCell(Text('Yakıt')),
                DataCell(Text('03.04.2022')),
                DataCell(Text('170')),
              ]),
              DataRow(cells: [
                DataCell(Text('Kira')),
                DataCell(Text('15.04.2022')),
                DataCell(Text('2500')),
              ]),
              DataRow(cells: [
                DataCell(Text('Aidat')),
                DataCell(Text('15.04.2022')),
                DataCell(Text('300')),
              ]),
              DataRow(cells: [
                DataCell(Text('Elektrik')),
                DataCell(Text('22.04.2022')),
                DataCell(Text('300')),
              ]),
            ],
          ),
        ],
      ),
    ));
  }

  Future getChartData() async {
       //  await _gdpDataDbHelper.insertEntity(GDPData('Yakıt', 700));
      //   await _gdpDataDbHelper.insertEntity(GDPData('Aidat', 300));
      //   await _gdpDataDbHelper.insertEntity(GDPData('Kira', 2500));
        // await _gdpDataDbHelper.insertEntity(GDPData('Elektrik', 300));
      //  await _gdpDataDbHelper.deleteEntity(1);
      //  await _gdpDataDbHelper.deleteEntity(2);
      //  await _gdpDataDbHelper.deleteEntity(3);
      //  await _gdpDataDbHelper.deleteEntity(4);
    var result = await _gdpDataDbHelper.getEntities();
    setState(() {
      _chartData = result.cast();
    });
  }
}
