import 'package:fluent_ui/fluent_ui.dart';
import 'package:valorant_track/helpers/colors.dart';
import 'package:valorant_track/network_util/api.dart';
import 'package:http/http.dart' as http;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future<void> search() async {
    http.Response res = await Api().search('gameName', 'tagLine');
    print(res.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  FluentIcons.navigate_back,
                  size: 45,
                  color: CColors.mainRed,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              Text(
                widget.text,
                style: const TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: CColors.mainRed,
                    fontSize: 35,
                    fontFamily: 'Valorant'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
