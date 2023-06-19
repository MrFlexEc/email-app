import 'package:flutter/material.dart';
import 'package:email_app/model/email.dart';

class DetailScreen extends StatelessWidget {
  
  final Email email;

  DetailScreen({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.pink[500],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              'From: ${email.from}',
            ),
            Text(
              email.subject
            ),
            Text(
              email.dateTime.toString()
            ),
            Text(
              email.body
            )
          ]
        ),
      ),
    );
  }
}