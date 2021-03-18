import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fusion/Components/appBar.dart';
import 'package:fusion/Components/side_drawer.dart';

class AcademicHomePage extends StatefulWidget {
  static String tag = 'academic-page';
  @override
  _AcademicHomePageState createState() => _AcademicHomePageState();
}

class _AcademicHomePageState extends State<AcademicHomePage> {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        border: new Border.all(
          color: Colors.deepOrangeAccent,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(15.0)));
  }

  Text myText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
    );
  }

  Padding myContainer(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: myText(text),
        ),
        decoration: myBoxDecoration(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar().buildAppBar(),
      drawer: SideDrawer(),
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            shadowColor: Colors.black,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 170.0,
                  height: 170.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/unknown.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Rishabh Pandey',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Student",
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  "Academic",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                )),
              ),
              decoration: new BoxDecoration(
                color: Colors.deepOrangeAccent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 2.0,
                  )
                ],
                borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
              ),
            ),
          ),
          Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            shadowColor: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  child: myContainer("Current Semester"),
                  onTap: () {
                    Navigator.pushNamed(context,
                        '/academic_home_page/current_semester_home_page');
                  },
                ),
                InkWell(
                  child: myContainer("Registration"),
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/academic_home_page/registration_home_page');
                  },
                ),
                InkWell(
                  child: myContainer("Check Dues"),
                  onTap: () {
                    Navigator.pushNamed(context, '/academic_home_page/dues');
                  },
                ),
                InkWell(
                  child: myContainer("Apply for Bonafide"),
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/academic_home_page/bonafide');
                  },
                ),
                InkWell(
                  child: myContainer("Check Attendance"),
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/academic_home_page/attendance');
                  },
                ),
                InkWell(
                  child: myContainer("Branch Change"),
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/academic_home_page/branch_change');
                  },
                ),
                InkWell(
                  child: myContainer("Evaluate Teaching Credits"),
                  //onTap: (){},
                ),
                InkWell(
                  child: myContainer("Thesis"),
                  onTap: () {
                    Navigator.pushNamed(context, '/academic_home_page/thesis');
                  },
                ),
                InkWell(
                  child: myContainer("View Performance"),
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/academic_home_page/performance');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
