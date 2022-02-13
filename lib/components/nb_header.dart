import 'package:flutter/material.dart';
import 'package:nb2/theme.dart';


class NbHeader extends StatelessWidget {
  final Widget? headerContent;

  const NbHeader({Key? key, this.headerContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Icon(Icons.settings, size: 22.0),
              Icon(Icons.search, size: 27.0),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 8.0, 30.0, 8.0),
          child: Row(
           // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              headerContent ?? const CircleAvatar(
                radius: 30.00,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0, 12.0, 5.0),
                child: Column(
                  children: [
                    Text(
                      'Lauren Langford',
                      style: CustomTheme.lightTextTheme.headline2
                    ),
                    const Text('An exerciser from Fremantle'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );


  }
}
