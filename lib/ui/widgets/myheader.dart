import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 25,
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(.3), BlendMode.srcOver),
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/08/31/03/59/plane-1632598_960_720.jpg",
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.flight_takeoff,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 9.0,
                      ),
                      Text(
                        "FLIGHHT",
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .apply(color: Colors.white, fontWeightDelta: 2),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Where are you flying to?",
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .apply(fontWeightDelta: 2, color: Colors.white),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 5.0,
                        )
                      ],
                    ),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.pin_drop),
                          hintText: "Enter your destination",
                          filled: true),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
