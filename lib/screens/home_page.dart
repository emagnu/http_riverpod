// Import LIBRARIES FILES PARTS PROVIDERS
//
// Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_riverpod/models/user_model.dart';
// Import FILES
import '../providers/user_data_provider.dart';
// Import PARTS
// PROVIDERS

//

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod with Http!'),
      ),
      body: data.when(
        error: (error, stackTrace) => Center(
          child: Text(error.toString()),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        data: (data) {
          List<UserModel> userList = data.map((e) => e).toList();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.indigo,
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        title: Text(
                          'Name:  ${userList[index].firstName} ${userList[index].lastName}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          'Email:  ${userList[index].email}',
                          style: const TextStyle(color: Colors.white54),
                        ),
                        trailing: CircleAvatar(
                          backgroundImage: NetworkImage(userList[index].avatar),
                        ),
                      ),
                    );
                  },
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
