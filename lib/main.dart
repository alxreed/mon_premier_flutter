import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Les widgets basiques',
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }

}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
  
}
class _Home extends State<Home> {

  bool oui = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double largeur = MediaQuery.of(context).size.width;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hey'),
        leading: new Icon(Icons.account_circle),
        actions: <Widget>[
          new Icon(Icons.access_alarm),
          new Icon(Icons.golf_course),
          new Icon(Icons.directions_bike),
        ],
        elevation: 10.0,
        centerTitle: true,
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Salut les codeurs",
                style: new TextStyle(
                  color: (oui) ? Colors.grey[900] : Colors.green,
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic
                ),
              ),
              new Card(
                elevation: 10.0,
                child: new Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 200.0,
                  child: new Image.asset(
                    "images/wolf.jpg",
                    fit: BoxFit.cover,  
                  )
                ),
              ),
              new IconButton(
                icon: new Icon(Icons.delete),
                onPressed: () {
                  print("On a appuyé sur le bouton");
                  setState(() {
                    oui = !oui;                    
                  });
                },
              ),
              new FlatButton(
                onPressed: boutonAppuye,
                child: new Text("Appuyez moi !"),
              ),
              new RaisedButton(
                onPressed: boutonAppuye,
                child: new Text("Je suis plus haut que toi"),
                color: Colors.red,
                textColor: Colors.white,
                elevation: 8,
              ),
              new Container(
                height: largeur / 5,
                color: Colors.red,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Icon(Icons.thumb_up,
                    color: Colors.white,
                    size: largeur / 10,),
                    new Icon(Icons.directions_bike,
                    color: Colors.white,
                    size: largeur / 10,),
                    new Icon(Icons.thumb_down,
                    color: Colors.white,
                    size: largeur / 10,),
                    new Icon(Icons.palette,
                    color: Colors.white,
                    size: largeur / 10,),
                    // new Container(
                    //   height: largeur / 8,
                    //   width:largeur / 8,
                    //   color: Colors.yellow,
                    // ),
                    // new Container(
                    //   height: largeur / 8,
                    //   width:largeur / 8,
                    //   color: Colors.blue,
                    // ),
                    // new Container(
                    //   height: largeur / 8,
                    //   width:largeur / 8,
                    //   color: Colors.indigo,
                    // ),
                    // new Container(
                    //   height: largeur / 8,
                    //   width:largeur / 8,
                    //   color: Colors.teal,
                    // ),
                    // new Container(
                    //   height: largeur / 8,
                    //   width:largeur / 8,
                    //   color: Colors.indigo,
                    // ),
                    // new Container(
                    //   height: largeur / 8,
                    //   width: largeur / 8,
                    //   color: Colors.teal,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
        // new Container(
        //   color: Colors.blue,
        //   // margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
        //   child: new Center(
        //     child: new Text(
        //       'Apprentissage des Widgets',
        //       textAlign: TextAlign.center,
        //       textScaleFactor: 2.0,
        //       style: new TextStyle(
        //         color: Colors.white,
        //         fontSize: 10.0,
        //         fontStyle: FontStyle.italic
        //       )
        //     )
        //   )
        //   // new Center(
        //   //   child: new Card(
        //   //     elevation: 5.0,
        //   //     color: Colors.teal,
        //   //     child: new Container(
        //   //       width: MediaQuery.of(context).size.width / 1.5,
        //   //       height: 250.0,
        //   //       child: new Image.asset(
        //   //         "images/wolf.jpg",
        //   //         fit: BoxFit.cover,
        //   //         ),
                
        //         // new Image.network(
        //         //   "https://upload.wikimedia.org/wikipedia/en/5/53/Pickle_Rick.jpg",
        //         //   fit: BoxFit.cover,
        //         //   ),
        // ),
        floatingActionButton: new FloatingActionButton(
          onPressed: boutonAppuye,
          elevation: 8.0,
          tooltip: 'Changer oui',
          child: new Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

void boutonAppuye() {
  setState(() {
    oui = !oui;
  });
}

}