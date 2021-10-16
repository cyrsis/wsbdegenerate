import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: SingleChildScrollView(
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
            Container(
              width: double.infinity,
              height: 400.0,
              child: new ListView(
                //Under Container
                scrollDirection: Axis.horizontal,
                itemExtent: 200.0,
                children: <Widget>[
                  _buildGmeCard("https://preview.redd.it/lf2ucykbxot71.jpg?width=640&height=947&crop=smart&auto=webp&s=efd75097a4f7e19d9e4aa647579bedd1dd3e590c"),
                  _buildGmeCard("https://preview.redd.it/lf2ucykbxot71.jpg?width=640&height=947&crop=smart&auto=webp&s=efd75097a4f7e19d9e4aa647579bedd1dd3e590c"),
                  _buildGmeCard("https://preview.redd.it/lf2ucykbxot71.jpg?width=640&height=947&crop=smart&auto=webp&s=efd75097a4f7e19d9e4aa647579bedd1dd3e590c"),
                  _buildGmeCard("https://preview.redd.it/lf2ucykbxot71.jpg?width=640&height=947&crop=smart&auto=webp&s=efd75097a4f7e19d9e4aa647579bedd1dd3e590c"),
                  _buildGmeCard("https://preview.redd.it/lf2ucykbxot71.jpg?width=640&height=947&crop=smart&auto=webp&s=efd75097a4f7e19d9e4aa647579bedd1dd3e590c"),

                ],
              ),
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
            Container(
              width: double.infinity,
              height: 400.0,
              child: new ListView(
                //Under Container
                scrollDirection: Axis.horizontal,
                itemExtent: 200.0,
                children: <Widget>[
                  _buildCard(),
                  _buildCard(),
                  _buildCard(),
                  _buildCard(),
                  _buildCard(),
                  _buildCard(),
                  _buildCard(),
                  _buildCard(),
                ],
              ),
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

  _buildCard() {
    return Container(
      width: 200.0,
      height: 300.0,
      child: new Image.network(
          "https://preview.redd.it/zi1ucua14gt71.jpg?width=640&crop=smart&auto=webp&s=65844b571576a5d86da5921d4e31bfdaa16819bb"),
    );
  }

  _buildGmeCard(image) {
    return Container(
      width: 200.0,
      height: 300.0,
      child: new Image.network(image),
    );
  }
}
