import 'package:flutter/material.dart';

class Commentbox extends StatelessWidget {
  final String comment;
  final String name;
  final bool isme;
  final String time;
  final Key key;
  Commentbox(this.comment, this.name, this.isme, this.time,
      {required this.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                color: Colors.teal,
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isme
                        ? Text(
                            name + "(You)",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text(
                            name,
                            style: TextStyle(color: Colors.white),
                          ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          time.split(' ')[0],
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          time.substring(11, time.length - 10),
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(comment, style: TextStyle(color: Colors.teal))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
