import 'package:flutter/material.dart';
import '../navigator.dart';

class Rubber extends StatefulWidget {
  static String routeName = '/rubber';

  @override
  State<StatefulWidget> createState() {
    return InfoPageState();
  }
}

class InfoPageState extends State<Rubber> {
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
          'Wood, leather, rubber',
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
                Image.network('https://www.conserve-energy-future.com/wp-content/uploads/2013/01/tire-rubber-recycling.jpg'
                  // width: 200,
                  // height: 200,
                ),
                Container(
                  // padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  // margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text('Huge amounts of waste rubber are produced each year, much of it from old vehicle tires (quite a lot of shredded rubber also ends up on roads and reappears in the form of air and water pollution). Given how big and bulky tires are and how many of them we get through, it\'s perhaps surprising that only 3.4 percent of all municipal waste in the United States is classed as rubber and leather. That might not sound a lot, but it\'s about 9 million tons a year (the same weight as 2 million elephants). [6] Old tires can often be turned into new ones ("retreads") or shredded to make soft, bouncy landscaping materials for cushioning children\'s playgrounds.',
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
