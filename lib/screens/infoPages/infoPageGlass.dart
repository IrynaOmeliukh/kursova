import 'package:flutter/material.dart';
import '../navigator.dart';

class Glass extends StatefulWidget {
  static String routeName = '/glass';

  @override
  State<StatefulWidget> createState() {
    return InfoPageState();
  }
}

class InfoPageState extends State<Glass> {
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
          'Glass',
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
                Image.network('https://upload.wikimedia.org/wikipedia/commons/4/43/Fassade_Wilhelmstrasse_65%2C_Berlin-Mitte%2C_160417%2C_ako.jpg',
                  // width: 200,
                  // height: 200,
                ),
                Container(
                  // padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  // margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text(
                      'Glass is a non-crystalline, often transparent amorphous solid, that has widespread practical, technological, and decorative use in, for example, window panes, tableware, and optics. Glass is most often formed by rapid cooling (quenching) of the molten form; some glasses such as volcanic glass are naturally occurring. The most familiar, and historically the oldest, types of manufactured glass are "silicate glasses" based on the chemical compound silica (silicon dioxide, or quartz), the primary constituent of sand. Soda-lime glass, containing around 70% silica, accounts for around 90% of manufactured glass. The term glass, in popular usage, is often used to refer only to this type of material, although silica-free glasses often have desirable properties for applications in modern communications technology. Some objects, such as drinking glasses and eyeglasses, are so commonly made of silicate-based glass that they are simply called by the name of the material.',
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
