import 'package:flutter/material.dart';
import '../navigator.dart';

class Paper extends StatefulWidget {
  static String routeName = '/paper';

  @override
  State<StatefulWidget> createState() {
    return InfoPageState();
  }
}

class InfoPageState extends State<Paper> {
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
          'Paper',
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
                Image.network('http://www.greenmountains.ae/uploads/services/image/paper.png'
                  // width: 200,
                  // height: 200,
                ),
                Container(
                  // padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  // margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text('Paper is a thin sheet material produced by mechanically or chemically processing cellulose fibres derived from wood, rags, grasses or other vegetable sources in water, draining the water through fine mesh leaving the fibre evenly distributed on the surface, followed by pressing and drying. Although paper was originally made in single sheets by hand, almost all is now made on large machines—some making reels 10 metres wide, running at 2,000 metres per minute and up to 600,000 tonnes a year. It is a versatile material with many uses, including printing, packaging, decorating, writing, cleaning, filter paper, wallpaper, book endpaper, conservation paper, laminated worktops, toilet tissue, currency and security paper and a number of industrial and construction processes.',
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
