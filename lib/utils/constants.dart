import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:profil/screens/add_video_screen.dart';
import 'package:profil/screens/message_screen.dart';
import 'package:profil/screens/profile_screen.dart';
import 'package:profil/screens/search_screen.dart';
import 'package:profil/screens/video_screen.dart';

//PAGES
final List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  const MessageScreen(),
  ProfileScreen(uid: firebaseAuth.currentUser!.uid),
];

//COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

//Firebase
var firebaseAuth = FirebaseAuth.instance;
var firestore = FirebaseFirestore.instance;
var firebaseStorage = FirebaseStorage.instance;
