import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Component/WorkoutButton.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    getData().then((value) {
      setState(() {
        this.flag = value;
      });
    });
  }

  setDate(var flag) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('flag', '$flag');
  }

  Future getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var flag = prefs.getString('flag');
    if (flag == null) {
      return " ";
    } else {
      return flag;
    }
  }

  var flag = ' ';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WorkoutButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/workoutA');
                      setState(() {
                        flag = 'A';
                        setDate(flag);
                        getData();
                      });
                    },
                    text: 'WORKOUT\nA',
                    textsize: 24),
                WorkoutButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/workoutB');
                      setState(() {
                        flag = 'B';
                        setDate(flag);
                        getData();
                      });
                    },
                    text: "WORKOUT\nB",
                    textsize: 24),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'Last Time You Did Workout $flag',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
