import 'package:flutter/material.dart';
import '../navigator.dart';

class Textiles extends StatefulWidget {
  static String routeName = '/textiles';

  @override
  State<StatefulWidget> createState() {
    return InfoPageState();
  }
}

class InfoPageState extends State<Textiles> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          'Textiles',
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
                Image.network('https://www.textiletechnology.net/news/media/8/Fashion-for-Good-REcycling-70336.jpeg'
                  // width: 200,
                  // height: 200,
                ),
                Container(
                  // padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  // margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text('The importance of recycling textiles is increasingly being recognized. An estimated 100 billion garments are produced annually, worldwide. According to U.S. EPA, around 17 million tons of textile municipal solid waste (MSW) was generated in 2018, about 5.8% of total MSW generation. The recycling rate for textiles derived from clothing and footwear was 13.0%, while the recovery for sheets and pillowcases was 15.8% for the same year. As such, textile recycling is a significant challenge to be addressed as we strive to move closer to a zero landfill society.',
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
