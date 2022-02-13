import 'package:flutter/material.dart';
import 'package:nb2/theme.dart';
import 'package:nb2/theme/palette.dart';
import 'package:nb2/components/nb_circle_avatar.dart';
import 'package:nb2/components/nb_header.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'screens/daily_page.dart';
import 'screens/stats_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = CustomTheme.light();
    return MaterialApp(
      title: 'Lauren',
      theme: theme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
             const NbHeader(
               headerContent: NbCircle(),
             ),
             Expanded(
               child: SingleChildScrollView(
                 child: Column(
                   children: <Widget>[
                     Container(
                       height: 80,
                       color: Pride.prideRed,
                     ),
                     Container(
                       height: 80,
                       color: Pride.prideOrange,
                     ),
                     Container(
                       height: 80,
                       color: Pride.prideYellow,
                     ),
                     Container(
                       height: 80,
                       color: Pride.prideGreen,
                     ),
                     Container(
                       height: 80,
                       color: Pride.prideBlue,
                     ),
                     Container(
                       height: 80,
                       color: Pride.pridePurple,
                     ),
                   ],
                 ),
               ),
             ),
          ]
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.insights),
            label: 'Stats',
            // to the stats page
            onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const StatsPage()),
            );},
          ),
          SpeedDialChild(
            child: const Icon(Icons.insert_emoticon),
            label: 'My Day',
            // to the my day page
            onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DailyPage()),
            );},
          ),
        ],
      ),
    );
  }
}
