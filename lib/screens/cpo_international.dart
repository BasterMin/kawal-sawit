import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class cpo_international extends StatefulWidget {
  const cpo_international({super.key}) ;
  @override
  State<cpo_international> createState() => _cpo_internationalState();
}

class _cpo_internationalState extends State<cpo_international> {

  final List <Color> gradientColors = const [
    CupertinoColors.systemBlue,
    CupertinoColors.systemGreen,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title:  Transform(
          // you can forcefully translate values left side using Transform
          transform:  Matrix4.translationValues(-3.0, 0.0, 0.0),
          child: Text(
            "CPO International",
            style: GoogleFonts.poppins(
                color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
        body: Container(
          child: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 6, left: 20,),
                    child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 62, left: 20,),
                    child: Text('data grafik',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 62, left: 230,),
                    child: Text('data tanggal',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120,  right: 10),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AspectRatio(
                            aspectRatio: 1.70,
                            child: LineChart(lineChartData()),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
    );
  }

  TextStyle axisTextStyle () {
    return const  TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }
  Widget bottomTiles (double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 1:
        text = '21:30';
        break;
      case 4:
        text = '21:40';
        break;
      case 7:
        text = '21:50';
        break;
      case 10:
        text = '22:00';
        break;
      case 13:
        text = '22:10';
        break;
      case 17:
        text = '22:20';
        break;
      default:
        return Container();
    }
    return Text(text, style: axisTextStyle(),
      textAlign: TextAlign.left,

    );
  }
  Widget leftTiles(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 1:
        text = '';
        break;
      case 2:
        text = '';
        break;
      case 3:
        text = '';
        break;
      case 4:
        text = '';
        break;
      case 5:
        text = '';
        break;
      case 6:
        text = '';
        break;
      default:
        return Container();
    }
    return Text(text, style: axisTextStyle(),
      textAlign: TextAlign.left,
    );
  }
  LineChartData lineChartData() {

    final AxisTitles hideAxisTile = AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    );
    return LineChartData (
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        drawVerticalLine: true,
        verticalInterval: 1,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: hideAxisTile,
        topTitles: hideAxisTile,
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTiles,
            reservedSize: 10,
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: bottomTiles,
            reservedSize: 30,
          ),
        ),
      ),
      borderData: FlBorderData(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          isCurved: true,
          barWidth: 3,

          dotData: FlDotData(show: false),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
                colors: gradientColors
                    .map((color) => color.withOpacity(0.3))
                    .toList()),
          ),
          spots: const [
            FlSpot(0, 3),
            FlSpot(2, 3.5),
            FlSpot(4, 2.1),
            FlSpot(6, 4),
            FlSpot(8, 2),
            FlSpot(10, 4),
            FlSpot(11,3),
          ],
        ),
      ],
    );
  }
}