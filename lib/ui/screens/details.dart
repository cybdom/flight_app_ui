import 'package:flutter/material.dart';
import 'package:flight_app/global.dart';
import 'package:flight_app/ui/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("BOARDING PASS"),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    color: blueColor,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(),
                )
              ],
            ),
          ),
          Positioned.fill(
            child: Container(
              height: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 7.0,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xfff7f9ff)),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 25.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [blueColor, Color(0xfff7f9ff)],
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            FlightDetailColumn(),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.airplanemode_active,
                                      color: Colors.white),
                                  Text(
                                    "1h31min",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle
                                        .apply(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            FlightDetailColumn(),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15.0),
                          height: 100,
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Image.network(cloudImg),
                              ),
                              Positioned.fill(
                                child: Image.network(airplaneImg),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FlightInfoRow(
                          title: "Flight",
                          content: "LF713",
                        ),
                      ),
                      Expanded(
                        child: FlightInfoRow(
                          title: "Class",
                          content: "First",
                        ),
                      ),
                      Expanded(
                        child: FlightInfoRow(
                          title: "Boarding",
                          content: "09:11",
                        ),
                      ),
                      Expanded(
                        child: FlightInfoRow(
                          title: "Terminal",
                          content: "12A",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    padding: const EdgeInsets.all(15.0),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        PassengerContainer(
                          age: "21",
                          imageUrl:
                              "https://lh3.googleusercontent.com/-GELaWFBRPnQ/We3KfYBqTuI/AAAAAAAAAqE/wQDXxVI6nFoox1gOKfvIjmH1_5LKUhKzACEwYBhgL/w140-h140-p/20376010_1795833643775120_614181264397520443_n%2B%25281%2529.jpg",
                          fullName: "Amazigh Halzoun",
                          gender: "MALE",
                          seat: "18A",
                        ),
                        Divider(),
                        PassengerContainer(
                          age: "21",
                          imageUrl: userimageUrl,
                          fullName: "CYBDOM TECH",
                          gender: "MALE",
                          seat: "17A",
                        ),
                      ],
                    ),
                  ),
                  Image.network(boardingpassImg),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FlightInfoRow extends StatelessWidget {
  final String title, content;

  const FlightInfoRow({Key key, this.title, this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "$title",
          style: Theme.of(context).textTheme.body1.apply(color: Colors.black45),
        ),
        SizedBox(
          height: 3.0,
        ),
        Text(
          "$content",
          style: Theme.of(context).textTheme.title.apply(color: Colors.black87),
        )
      ],
    );
  }
}
