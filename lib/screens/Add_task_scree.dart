import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color(0xff757575),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )),
      child: Column(
        children: [
          Text(
            'ADD NOTE',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 10.0,
          ),
          FlatButton(
            onPressed: null,
            child: Text(
              'ADD',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}
