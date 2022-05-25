import 'package:flutter/material.dart';
import '../navigator.dart';

class Special extends StatefulWidget {
  static String routeName = '/special';

  @override
  State<StatefulWidget> createState() {
    return InfoPageState();
  }
}

class InfoPageState extends State<Special> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          'Special/hazardous waste',
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
                Image.network('https://framinghamsource.com/wp-content/uploads/2021/04/hazardous.waste_.day_.SF_.courtesy.png'
                  // width: 200,
                  // height: 200,
                ),
                Container(
                  // padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  // margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text('A hazardous secondary material is recycled if it is used or reused (e.g., as an ingredient in a process), reclaimed, or used in certain ways including used in a manner constituting disposal and burned for energy recovery. A material is reclaimed if it is processed to recover a usable product or if it is regenerated (e.g., regeneration of spent solvents). A material is used or reused if it is either employed as an ingredient in an industrial process to make a product (e.g., distillation bottoms from one process used as feedstock in another process) or if it is employed as an effective substitute for a commercial product (e.g., spent pickle liquor used as a sludge conditioner in wastewater treatment).',
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
