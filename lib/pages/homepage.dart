import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:resume_app/pages/history.dart';
import 'package:resume_app/pages/projects.dart';
import 'package:resume_app/pages/skills.dart';
import 'package:resume_app/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [HomeScreen(), Skills(), History(), Projects()];
  final _controller = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: text("Contact Info", 30, Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {},
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.whatsapp_outlined, color: Colors.black)),
                ),
              ),
              title: text("0815174457", 20, Colors.black),
              dense: false,
            ),
            ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {},
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: Icon(Icons.mail, color: Colors.black),
                ),
              ),
              title: text("lenuanwa@gmail.com", 20, Colors.black),
              dense: false,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse("https://github.com/Jud-e"));
                  },
                  icon: FaIcon(FontAwesomeIcons.github),
                  color: Colors.black,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {
                    launchUrl(
                        Uri(scheme: 'mailto', path: 'lenuanwa@gmail.com'));
                  },
                  icon: Icon(Icons.mail),
                  color: Colors.black,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {
                    launchUrl(
                        Uri.parse("https://www.linkedin.com/in/jude-enuanwa/"));
                  },
                  icon: FaIcon(FontAwesomeIcons.linkedinIn),
                  color: Colors.black,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse("https://twitter.com/Chaseduo1"));
                  },
                  icon: FaIcon(FontAwesomeIcons.twitter),
                  color: Colors.black,
                  iconSize: 30,
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 216, 216, 216),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 216, 216, 216),
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Color.fromARGB(255, 182, 181, 181),
            gap: 8,
            padding: EdgeInsets.all(16.0),
            tabs: [
              GButton(icon: Icons.home, text: "Home"),
              GButton(icon: Icons.book_outlined, text: "Skills"),
              GButton(icon: Icons.history, text: "History"),
              GButton(icon: Icons.all_inbox_rounded, text: 'Projects'),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState((() {
                _selectedIndex = index;
              }));
            },
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
        image: AssetImage("assets/me.jpg"),
        fit: BoxFit.cover,
      ))),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, I'm \n Jude!",
                style: GoogleFonts.didactGothic(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
            Text(
                "Flutter Developer, Anime enthusiast, all things good in the world",
                style: GoogleFonts.amaticSc(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      )
    ]));
  }
}
