import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/models/comments.dart';
import 'package:flutter_application_1/screens/comment_screen.dart';

class PlacesBottomBar extends StatefulWidget {
  @override
  State<PlacesBottomBar> createState() => _PlacesBottomBarState();
}

class _PlacesBottomBarState extends State<PlacesBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.90,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: ListView(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Place Name",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Text(
                      """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard 
                  dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen 
                  book. It has survived not only five centuries, but also the leap into electronic typesetting""",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, CommentScreen.routeName);
                            },
                            child: Text(
                              'Add Comments..',
                              style: TextStyle(color: Colors.red),
                            )),
                      ],
                    )
                    /*Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(labelText: 'Title'),
                          controller: commentController,
                          //onChanged: (val) {
                          //  titleInput = val;
                          //  print(titleInput);
                          //},
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: 'Amount'),
                        ),
                        TextButton(
                            onPressed: () {
                              _addnewTransaction(commentController.text,
                                  int.parse(starController.text));
                            },
                            child: Text('Add Transaction')),
                      ],
                    )*/
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
