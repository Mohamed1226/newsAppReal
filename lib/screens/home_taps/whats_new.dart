import 'package:flutter/material.dart';

class whatesNew extends StatefulWidget {
  @override
  _whatesNewState createState() => _whatesNewState();
}

class _whatesNewState extends State<whatesNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _drawheader(),
          _drawtopstories(),
        ],
      ),
    );
  }

  Widget _drawheader() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.25,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/pn.jpg'),
            fit: BoxFit.cover,
          )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "hello geys",
              style: TextStyle(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35, right: 35),
              child: Text(
                "if you watching this now you entered the history from its big doors because this belongs to me",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawtopstories() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 250, top: 12),
            child: drawsectiontitle("Top STORIES"),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          Card(
            child: Column(
              children: <Widget>[
                drawsinglerow(),
                drawdivider(),
                drawsinglerow(),
                drawdivider(),
                drawsinglerow(),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(8)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              drawsectiontitle("RECENT UPDATES"),
              drawrecentupdatecard(),
              drawrecentupdatecard(),
            ],
          ),
        ],
      ),
    );
  }

  Widget drawsinglerow() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 125,
          height: 125,
          child: Image(
            image: ExactAssetImage('assets/images/pn.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          children: <Widget>[
            Text(
              "you will win if you stay with me",
              style: TextStyle(fontSize: 13),
              maxLines: 2,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                Text("data"),
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.timer),
                      Text("15 minutes"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget drawdivider() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade100,
    );
  }

  drawsectiontitle(String title) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.grey,
          letterSpacing: .2,
          fontSize: 18,
          fontWeight: FontWeight.w600),
    );
  }

  Widget drawrecentupdatecard() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage("assets/images/pn3.jpg"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "SPOT",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(26),
            child: Text("if you here smile please "),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16.0,
              top: 8,
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.timer,
                ),
                Text(
                  "15 minutes",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
