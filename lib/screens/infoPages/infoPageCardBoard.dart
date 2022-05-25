import 'package:flutter/material.dart';
import '../navigator.dart';

class CardBoard extends StatefulWidget {
  static String routeName = '/cardBoard';

  @override
  State<StatefulWidget> createState() {
    return InfoPageState();
  }
}

class InfoPageState extends State<CardBoard> {
  // List<String> categories = ['plastic', 'paper'];
  List<dynamic> colors = [
    Colors.teal[200],
    Colors.red[200],
    Colors.green[200],
    Colors.blue[200],
    Colors.orange[200]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          'Card Board',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => Navigator.of(context).pushReplacement(
            new MaterialPageRoute(
              settings: const RouteSettings(name: '/navigator'),
              builder: (context) => MainNavigator(),
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.network('https://st2.depositphotos.com/4278641/10298/i/950/depositphotos_102987154-stock-photo-empty-cardboard-boxes.jpg'
                  // width: 200,
                  // height: 200,
                ),
                Container(
                  // padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  // margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text('Cardboard boxes are industrially prefabricated boxes, primarily used for packaging goods and materials and can also be recycled. Specialists in industry seldom use the term cardboard because it does not denote a specific material. The term cardboard may refer to a variety of heavy paper-like materials, including, RS 4 Box, corrugated fiberboard, or paperboard. The meaning of the term may depend on the locale, contents, construction, and personal choice.',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      ),
                    )),
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 5),
                //   height: 30,
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     // Let the ListView know how many items it needs to build.
                //     // itemCount: categories.length,
                //     // Provide a builder function. This is where the magic happens.
                //     // Convert each item into a widget based on the type of item it is.
                //     itemBuilder: (context, index) {
                //       // final item = categories[index];
                //
                //       // return Container(
                //       //   margin: EdgeInsets.only(bottom: 3, right: 6),
                //       //   decoration: BoxDecoration(
                //       //     color: colors[index],
                //       //     borderRadius: const BorderRadius.only(
                //       //         topLeft: Radius.circular(3),
                //       //         topRight: Radius.circular(3),
                //       //         bottomLeft: Radius.circular(3),
                //       //         bottomRight: Radius.circular(3)),
                //       //     boxShadow: [
                //       //       BoxShadow(
                //       //         color: Colors.grey.withOpacity(0.2),
                //       //         spreadRadius: 4,
                //       //         blurRadius: 10,
                //       //         offset: const Offset(
                //       //             3, 5), // changes position of shadow
                //       //       ),
                //       //     ],
                //       //   ),
                //       //   // child: Text(item),
                //       // );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
