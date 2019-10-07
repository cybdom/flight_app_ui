import 'package:flutter/material.dart';

class FlightDetailColumn extends StatelessWidget {
  final Color textColor;
  const FlightDetailColumn({
    Key key,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "06 OCT, 13:57",
          style: Theme.of(context)
              .textTheme
              .subhead
              .apply(color: textColor ?? Colors.white),
        ),
        Text(
          "LAS",
          style: Theme.of(context)
              .textTheme
              .title
              .apply(color: textColor ?? Colors.white, fontWeightDelta: 2),
        ),
        Text(
          "Las Vegas",
          style: Theme.of(context)
              .textTheme
              .subhead
              .apply(color: textColor ?? Colors.white),
        ),
      ],
    );
  }
}
