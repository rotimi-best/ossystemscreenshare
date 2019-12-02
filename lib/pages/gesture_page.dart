
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GesturePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Ossystem Screen Sharer'),
      ),
      body: Center(
        child: GestureDetector(
          onVerticalDragStart: (DragStartDetails detail) {
            print("onVerticalDragStart");
            print(detail.globalPosition);
            print(detail.toString());
          },
          onVerticalDragUpdate: (DragUpdateDetails detail) {
              print("onVerticalDragUpdate");
            print(detail.globalPosition);
            print(detail.delta);
            print(detail.localPosition);
            // print(detail.toString());
          },
          onVerticalDragEnd: (DragEndDetails detail) {
              print("onVerticalDragEnd");
            print(detail.velocity);
            // print(detail.toString());
          },
          child: Container(
            height: 100.0,
            width: 100.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(child: Text('Do anything')),
          ),
        ),
        // child: Text("Make any gesture",
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 40.0,
        //     fontStyle: FontStyle.normal,
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart),
        elevation: 10.0,
        onPressed: () {
          print('Okay adding to the shopping cart');
        },
      ),
      drawer: Drawer(
          elevation: 16.0,
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Rotimi Best"),
                accountEmail: Text("rb.ossystem@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("RB"),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                      child: Text('rb'),
                      backgroundColor: Colors.white60,
                    )
                ],
              ),
              ListTile(
                title: new Text("All inboxes"),
                leading: new Icon(Icons.mail),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: new Text("Sent"),
                leading: new Icon(Icons.mail),
              ),
              ListTile(
                title: new Text("Social"),
                leading: new Icon(Icons.people),
              ),
              ListTile(
                title: new Text("Promotions"),
                leading: new Icon(Icons.local_gas_station),
              ),
            ],
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}