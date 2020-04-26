import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class Types extends StatefulWidget {
  @override
  _TypesState createState() => _TypesState();
}

class _TypesState extends State<Types> {
  @override
  var book_type = [
    {
      'image': './images/icons/science_books.png',
      'type': 'Educational',
    },
    // romance
    {
      'image': './images/icons/romantic_books.png',
      'type': 'Romance',
    },
    //Cooking
    {
      'image': './images/icons/cooking_books.png',
      'type': 'Cooking',
    },
    // Philosophy
    {
      'image': './images/icons/philosophy_books.png',
      'type': 'Philosophy',
    },
    //Law
    {
      'image': './images/icons/law_books.png',
      'type': 'Law and Order',
    },
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: book_type.length,
      itemBuilder: (context, index) {
        return SingleType(
          type_image: book_type[index]['image'],
          type_name: book_type[index]['type'],
        );
      },
    );
  }
}

class SingleType extends StatelessWidget {
  @override
  final type_image;
  final type_name;

  SingleType({this.type_image, this.type_name});

  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: InkWell(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 50.0),
            child: ListTile(
              leading: GFAvatar(
                backgroundImage: AssetImage(type_image),
                shape: GFAvatarShape.standard,
                backgroundColor: Colors.transparent,
              ),
              title: new Text(type_name),
              trailing: Icon(Icons.menu),
              subtitle: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
              ),
            ),
          ),
          onTap: () {},
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: <Color>[
              Color.fromRGBO(255, 0, 0, 0.2),
              Colors.red,
            ]
          )
        ),
      )
    );
  }
}
