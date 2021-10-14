import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColorDark,
      body: Container(
        child: Column(
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
                  "https://www.thedroidsonroids.com/wp-content/uploads/2018/04/flutter_blog-2-750x400.png"),
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
                                    'https://pbs.twimg.com/profile_images/535560454525825024/PLt74yES.png'))),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      new Text(
                        "r/GDG",
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
                  "https://lh3.googleusercontent.com/06LV2EzhXpzrtREoQVZjzZqyuhMoTN7gcIvJRZ40GGHF-BLqkCsvOzrvrS0rOkH_aov7SJJUbK23AOHSqzXYTKeoO3iw29s=s1352"),
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
