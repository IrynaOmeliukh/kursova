import 'package:flutter/material.dart';
import '../navigator.dart';

class Metal extends StatefulWidget {
  static String routeName = '/metal';

  @override
  State<StatefulWidget> createState() {
    return InfoPageState();
  }
}

class InfoPageState extends State<Metal> {
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
          'Metal',
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
                Image.network('https://cdn4.explainthatstuff.com/aluminum-can-recycling.jpg'
                  // width: 200,
                  // height: 200,
                ),
                Container(
                  // padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  // margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text('Most of the metal we throw away at home comes from food and drink cans and aerosols. Typically food cans are made from steel, which can be melted down and turned into new food cans. Drinks cans are generally thinner and lighter and made from aluminum, which can also be recycled very easily. Mining aluminum is a very energy-intensive and environmentally harmful process. That\'s why waste aluminum cans have a relatively high value and why recycling them is such a good thing to do.',
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
