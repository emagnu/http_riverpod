// Import LIBRARIES FILES PARTS PROVIDERS
//
// Import LIBRARIES
//import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// Import FILES
import '../../models/user_model.dart';
import '../services/services.dart';

// Import PARTS
// PROVIDERS
final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(UserProvider).getUsers();
});
//

