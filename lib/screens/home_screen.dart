import 'package:fluent_ui/fluent_ui.dart';
// import 'package:flutter/material.dart';
import 'package:valorant_track/helpers/colors.dart';
import 'package:valorant_track/screens/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final riotId = TextEditingController();

  void search(String text) {
    Navigator.of(context).push(FluentPageRoute(
      builder: (context) => ProfileScreen(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .125),
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'vALORanT TRACKER',
            style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: CColors.mainRed,
                fontSize: 35,
                fontFamily: 'Valorant'),
          ),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: CColors.mainRed),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: TextBox(
                  onSubmitted: (value) => search(value),
                  controller: riotId,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: CColors.mainRed,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  placeholder: 'Enter Riot ID',
                ),
              ))
        ],
      ),
    );
  }
}
