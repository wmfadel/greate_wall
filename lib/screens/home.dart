import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/pics/wall.jpg',
                    height: MediaQuery.of(context).size.height * 0.65,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
                  buildTextRow(),
                ],
              ),
              buildCustomFAB(context),
            ],
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(height: 0.2, color: Colors.grey),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.mode_comment,
                        color: Colors.grey,
                        size: 18,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '20 SHARES',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert, color: Colors.grey),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 18,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '600 LIKES',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Positioned buildCustomFAB(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.6,
      left: MediaQuery.of(context).size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.blue,
                blurRadius: 20,
              )
            ],
          ),
          child: Center(
            child: Icon(
              Icons.playlist_add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Row buildTextRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 20),
        Text(
          '02',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'The Great Wall',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              'The Wall',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () {}),
      title: Text(
        'Photo',
        style: TextStyle(color: Colors.black),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.grey,
            ),
            onPressed: () {}),
      ],
    );
  }
}
