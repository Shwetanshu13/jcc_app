import 'package:flutter/material.dart';
import 'package:jcc_app/past_news.dart';
import './color.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Navigation()),);
  }
}




class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uttorer Mon',
      theme: ThemeData(primarySwatch: generateMaterialColor(Palette.primary)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uttorer Mon'),
        ),
        backgroundColor: Colors.black,
        drawer: Drawer(
          elevation: 16.0,
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Uttorer Mon"),
                accountEmail: Text("contact: uttorer_mon@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("xyz"),
                ),
                otherAccountsPictures: <Widget>[],
              ),
              RaisedButton(
                child: Text('Live'),
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => null),
                  );
                },
              ),
              Divider(
                height: 10,
              ),
              InkWell(
                              child: ListTile(
                  title: new Text("Past News"),
                  leading: new Icon(Icons.arrow_back),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  PastNews()),
                    );
                  },
                ),
              ),
              ListTile(
                title: new Text("Promotions"),
                leading: new Icon(Icons.local_offer),
              )
            ],
          ),
        ),
        body: null
      ),
    );
  }
}