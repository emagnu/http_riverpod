// Import LIBRARIES FILES PARTS PROVIDERS
//
// Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:http_riverpod/models/user_model.dart';
// Import FILES
// Import PARTS
// PROVIDERS

//

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.e}) : super(key: key);

  final UserModel e;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40.0),
              Center(
                child: CircleAvatar(
                  maxRadius: 60,
                  backgroundImage: NetworkImage(e.avatar),
                ),
              ),
              const SizedBox(height: 30.0),
              Text(
                'Name:  ${e.firstName} ${e.firstName}',
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Email: ${e.email}',
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
