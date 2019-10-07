import 'package:flutter/material.dart';

class PassengerContainer extends StatelessWidget {
  final String imageUrl, fullName, age, gender, seat;

  const PassengerContainer(
      {Key key, this.imageUrl, this.fullName, this.age, this.gender, this.seat})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        Spacer(
          flex: 1,
        ),
        FittedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                fullName,
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "$age\Y, $gender",
                style: TextStyle(fontSize: 13.0),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 3,
        ),
        Container(
          padding: EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              color: Color(0xfff1f2f9),
              borderRadius: BorderRadius.circular(3.0)),
          child: Row(
            children: <Widget>[
              Icon(Icons.airline_seat_recline_normal),
              Text("$seat"),
            ],
          ),
        )
      ],
    );
  }
}
