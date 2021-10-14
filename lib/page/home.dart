import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColorDark,
      body: Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      new Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    'https://styles.redditmedia.com/t5_2u6vg/styles/communityIcon_d56uwvvfalo61.jpg?width=256&s=a4891379b26c96e49205671f09728b5229216b03'))),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      new Text(
                        "r/GME",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.network(
                  "https://preview.redd.it/guxb3z4prgt71.jpg?width=640&crop=smart&auto=webp&s=a65f31c3ba6947a597ad0b609d4e1d34910f4a43"),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new IconButton(
                          icon: new Icon(Icons.file_upload),
                          color: Colors.black,
                          padding: new EdgeInsets.only(right: 90.0),
                          onPressed: () {},
                        ),
                        new IconButton(
                          icon: new Icon(Icons.message),
                          color: Colors.black,
                          padding: new EdgeInsets.only(right: 90.0),
                          onPressed: () {},
                        ),
                        new IconButton(
                          icon: new Icon(Icons.screen_share),
                          color: Colors.black,
                          padding: new EdgeInsets.only(right: 10.0),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      new Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    'https://styles.redditmedia.com/t5_2th52/styles/communityIcon_hemqpbusqpr71.png?width=256&s=13642d99810029ac3dcd1bc6b01f4536785164a4'))),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      new Text(
                        "r/wallstreetbets",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.network(
                  "https://preview.redd.it/zi1ucua14gt71.jpg?width=640&crop=smart&auto=webp&s=65844b571576a5d86da5921d4e31bfdaa16819bb"),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new IconButton(
                          icon: new Icon(Icons.file_upload),
                          color: Colors.black,
                          padding: new EdgeInsets.only(right: 90.0),
                          onPressed: () {},
                        ),
                        new IconButton(
                          icon: new Icon(Icons.message),
                          color: Colors.black,
                          padding: new EdgeInsets.only(right: 90.0),
                          onPressed: () {},
                        ),
                        new IconButton(
                          icon: new Icon(Icons.screen_share),
                          color: Colors.black,
                          padding: new EdgeInsets.only(right: 10.0),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

          ],

        ),


      ),

    );
  }
}
