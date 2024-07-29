import 'package:flutter/material.dart';
import 'package:flutter_animated_onboarding_main/app_theme.dart';
import 'package:flutter_animated_onboarding_main/model/tutorlist.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //List of tutors, temporary data set to display in UI
  static List<Tutor> tutors = [];
//creating a list that we're going to display and filter
  List<Tutor> display_list = List.from(tutors);

  //Void updateList(String value) {
  //  //this is the function that will filter our list
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kWhite,
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF7D96E6), // Replace with your desired gradient colors
                Color(0xFF213333),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find your tutor",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: AppTheme.kBlack),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppTheme.notWhite,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "eg: Maths,Online",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: AppTheme.kBlack,
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: display_list.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    display_list[index].name!,
                    style: TextStyle(
                      color: AppTheme.kBlack,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '${display_list[index].language!}',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
