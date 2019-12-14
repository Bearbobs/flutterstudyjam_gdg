import 'package:flutter/material.dart';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;


  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

  List<ChatModel>dummyData = [
    new ChatModel(
      name:"Avinash Kumar",
      message:"Hey Flutter,I love working with you!",
      time:"13:30",
      avatarUrl: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    ),
    new ChatModel(
      name:"Abhishek Sahai",
      message:"Hey! I have a doubt.Can I Call?",
      time:"12:30",
      avatarUrl: "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    ),
    new ChatModel(
      name:"Mark Zuckerberg",
      message:"I am thinking of some more features for Facebook!",
      time:"17:30",
      avatarUrl: "https://timedotcom.files.wordpress.com/2019/04/mark-zuckerberg-time-100-2019.jpg?quality=85&zoom=2",
    ),
    new ChatModel(
      name:"Team Cook",
      message:"Hey I will surely gift u a Iphone-XR",
      time:"18:30",
      avatarUrl: "https://images.pexels.com/photos/36483/aroni-arsa-children-little.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    ),
    new ChatModel(
      name:"Jeff Bezos",
      message:"I am feeling very low!",
      time:"19:30",
      avatarUrl: "https://images.pexels.com/photos/288477/pexels-photo-288477.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    ), new ChatModel(
      name:"Paytm",
      message:"Alert: Wallet Transaction!!",
      time:"13:30",
      avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTytAfemPYpIWXQMlIWjKPb1bC6gacWDOagAa8hsTmbWCXkwALv&s",
    ),
  ];

