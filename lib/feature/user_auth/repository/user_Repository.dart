

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/Provider/provider.dart';
import '../../../model/addUserModel.dart';

final addUserRepositoryProvider= Provider((ref) => AddUserRepository(firestore: ref.watch(firestoreprovider)),);

class AddUserRepository{
  final FirebaseFirestore _firestore ;
  AddUserRepository({required FirebaseFirestore firestore}):_firestore=firestore;

  CollectionReference get _user => _firestore.collection("Users");

  userAdd({required AddUserModel adduserdata}){
    _user.add(adduserdata.toJson()).then((value) => value.set(adduserdata.copyWith(id: value.id).toJson()),);
  }
}