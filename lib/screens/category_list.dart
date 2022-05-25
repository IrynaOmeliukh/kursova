import 'package:flutter/material.dart';
// import '../widgets/input.dart';

class Category_list extends StatefulWidget {
  static String routeName = '/category_list';

  @override
  State<StatefulWidget> createState() {
    return Category_list_State();
  }
}
class Category_list_State extends State<Category_list> {
  // List<dynamic> colors = [Colors.teal[200], Colors.red[200], Colors.green[200], Colors.blue[200], Colors.orange[200]];

  // List<dynamic> elements = [
  //   {
  //     'title': 'apple',
  //     'description':
  //     'descriptiondescriptiondescriptiondescriptiondescriptiondendescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription',
  //     'image': '',
  //     'category': ['hsjdh', 'dsfjkhfkiu']
  //   },
  //   {
  //     'title': 'banana',
  //     'description': 'description',
  //     'image': '',
  //     'category': ['hsjdh', 'dsfjkhfkiu']
  //   },
  // ];

  List<dynamic> findElements = [
    {
      'title': 'Plastics',
      'description': 'bottle, food containers',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/b/b2/Plastic_household_items.jpg',
      'route': '/plastics'
    },
    {
      'title': 'Glass',
      'description': 'drinking glasses, plate',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/4/43/Fassade_Wilhelmstrasse_65%2C_Berlin-Mitte%2C_160417%2C_ako.jpg',
      'route': '/glass'
    },
    {
      'title': 'Paper',
      'description': 'old magazines, newspapers',
      'image': 'http://www.greenmountains.ae/uploads/services/image/paper.png',
      'route': '/paper'
    },
    {
      'title': 'Cardboard',
      'description': 'corrugated box, milk in gable-top carton',
      'image': 'https://st2.depositphotos.com/4278641/10298/i/950/depositphotos_102987154-stock-photo-empty-cardboard-boxes.jpg',
      'route': '/cardBoard'
    },
    {
      'title': 'Textiles',
      'description': 't-shirts, sheets, towels,',
      'image': 'https://www.textiletechnology.net/news/media/8/Fashion-for-Good-REcycling-70336.jpeg',
      'route': '/textiles'
    },
    {
      'title': 'Wood, leather, rubber',
      'description': 'furniture, tire',
      'image': 'https://www.conserve-energy-future.com/wp-content/uploads/2013/01/tire-rubber-recycling.jpg',
      'route': '/rubber'
    },
    {
      'title': 'Scrap metal',
      'description': 'drink cans, tin',
      'image': 'https://cdn4.explainthatstuff.com/aluminum-can-recycling.jpg',
      'route': '/metal'
    },
    {
      'title': 'Special/hazardous waste',
      'description': 'electronics, garden chemicals',
      'image': 'https://framinghamsource.com/wp-content/uploads/2021/04/hazardous.waste_.day_.SF_.courtesy.png',
      'route': '/special'
    },
    {
      'title': 'Residual waste',
      'description': 'ceramics, gypsum board',
      'image': 'https://images.unsplash.com/photo-1533450718592-29d45635f0a9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'route': '/residual'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Categories'),
          backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: findElements.length,
                  itemBuilder: (BuildContext context, int index) {
                    // print(findElements[index]['category'].length);
                    return Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 40,
                      ),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          color: Colors.white,
                          elevation: 0.5,
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: ListTile(
                              minVerticalPadding: 20,
                              leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: Image.network(
                                      findElements[index]['image'],

                                    ),
                                  )
                              ),
                              title: Text(
                                findElements[index]['title'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21,
                                  color: Colors.black,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 3),
                                    child: Text(
                                      findElements[index]['description'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.pushReplacementNamed(context, findElements[index]['route']);
                              },
                            ),
                          )
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}