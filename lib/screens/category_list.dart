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
  List<dynamic> colors = [Colors.teal[200], Colors.red[200], Colors.green[200], Colors.blue[200], Colors.orange[200]];

  List<dynamic> elements = [
    {
      'title': 'apple',
      'description':
      'descriptiondescriptiondescriptiondescriptiondescriptiondendescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription',
      'image': '',
      'category': ['hsjdh', 'dsfjkhfkiu']
    },
    {
      'title': 'banana',
      'description': 'description',
      'image': '',
      'category': ['hsjdh', 'dsfjkhfkiu']
    },
  ];

  List<dynamic> findElements = [
    {
      'title': 'apple',
      'description':
      'descriptionptiondescriptiondescriptiondendescriptiondescriptiondescriptiondescriptiondescriptioptiondescriptiondescriptiondendescriptiondescriptiondescriptiondescriptiondescriptio',
      'image': '',
      'category': ['hsjdh', 'dsfjkhfkiu']
    },
    {
      'title': 'banana',
      'description': 'description',
      'image': '',
      'category': ['hsjdh', 'dsfjkhfkiu']
    },
    // {
    //   'title': 'banana',
    //   'description': 'description',
    //   'image': '',
    //   'category': ['hsjdh', 'dsfjkhfkiu']
    // },
    // {
    //   'title': 'banana',
    //   'description': 'description',
    //   'image': '',
    //   'category': ['hsjdh', 'dsfjkhfkiu']
    // },
    // {
    //   'title': 'banana',
    //   'description': 'description',
    //   'image': '',
    //   'category': ['hsjdh', 'dsfjkhfkiu']
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    print(findElements[index]['category'].length);
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
                          child: ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                    'https://images.unsplash.com/photo-1533450718592-29d45635f0a9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')),
                            title: Text(
                              findElements[index]['title'],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 21,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  width: 80,
                                  height: 60,
                                  child: ListView.builder(
                                    // Let the ListView know how many items it needs to build.
                                    itemCount:
                                    findElements[index]['category'].length,
                                    // Provide a builder function. This is where the magic happens.
                                    // Convert each item into a widget based on the type of item it is.
                                    itemBuilder: (context, index) {
                                      final item =
                                      findElements[index]['category'][index];

                                      return Container(
                                        margin: EdgeInsets.only(bottom: 3),
                                        decoration: BoxDecoration(
                                          color: colors[index],
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(3),
                                              topRight: Radius.circular(3),
                                              bottomLeft: Radius.circular(3),
                                              bottomRight: Radius.circular(3)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.2),
                                              spreadRadius: 4,
                                              blurRadius: 10,
                                              offset: const Offset(3,
                                                  5), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Text(item),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {},
                          )),
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