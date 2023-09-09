import 'package:flutter/material.dart';
import 'package:hngx_1/pages/github_page.dart';
import 'package:hngx_1/shared/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: Image.asset(
                  profileImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            kSizedBox,
            const Text(
              'Precious Adebayo',
              style: kNameStyle,
            ),
            kSizedBox,
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  Colors.grey[100],
                )),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const GitHubPage();
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      gitHubIcon,
                      height: 20,
                      width: 20,
                    ),
                    const Text(
                      'Open GitHub',
                      style: kButtonStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
