import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Roboto'),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: null,
            tooltip: 'menu toggle icon'),
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Find Your',
                  style: TextStyle(color: Colors.black87, fontSize: 22),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Inspiration',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search you'er looking for",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    )),
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Promo Today",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      promoCard('assets/images/one.jpg'),
                      promoCard('assets/images/one.jpg'),
                      promoCard('assets/images/one.jpg'),
                      promoCard('assets/images/one.jpg'),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets.images/three.jpg'),
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Best Starting',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  // Axis horizontal widgets
  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1, 0.6],
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(.1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
