import 'package:flutter/material.dart';
import '../navigator.dart';

class Plastics extends StatefulWidget {
  static String routeName = '/plastics';

  @override
  State<StatefulWidget> createState() {
    return InfoPageState();
  }
}

class InfoPageState extends State<Plastics> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          'Plastics',
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
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/b/b2/Plastic_household_items.jpg',
                  // width: 200,
                  // height: 200,
                ),
                Container(
                  // padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  // margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text(
                      'Plastics are a wide range of synthetic or semi-synthetic materials that use polymers as a main ingredient. Their plasticity makes it possible for plastics to be moulded, extruded or pressed into solid objects of various shapes. This adaptability, plus a wide range of other properties, such as being lightweight, durable, flexible, and inexpensive to produce, has led to its widespread use. Plastics typically are made through human industrial systems. Most modern plastics are derived from fossil fuel-based chemicals like natural gas or petroleum; however, recent industrial methods use variants made from renewable materials, such as corn or cotton derivatives.',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
