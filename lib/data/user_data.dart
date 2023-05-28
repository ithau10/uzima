// ignore_for_file: unnecessary_new, unnecessary_this, prefer_collection_literals

import 'package:firebase_auth/firebase_auth.dart';
import 'package:uzima/data/workout_data.dart';

class UserData {
  String? name;
  String? photo;
  String? mail;
  List<WorkoutData>? workouts;

  UserData({
    required this.name,
    required this.photo,
    required this.mail,
    required this.workouts,
  });

  UserData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    photo = json['photo'];
    mail = json['mail'];
    if (json['workouts'] != null) {
      List<WorkoutData> workouts = [];
      json['workouts'].forEach((v) {
        workouts.add(new WorkoutData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['photo'] = this.photo;
    data['mail'] = this.mail;
    if (this.workouts != null) {
      data['workouts'] = this.workouts!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  static fromFirebase(User? user) {
    return user != null
        ? UserData(
            name: user.displayName ?? "",
            photo: user.photoURL ?? "",
            mail: user.email ?? "",
            workouts: [],
          )
        : [];
  }
}
