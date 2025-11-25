import 'package:flutter/material.dart';
import 'package:profile_demo_app/helpers/colorhelper.dart';
import 'package:profile_demo_app/helpers/commonfun.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to My Profile',
          style: TextStyle(
            color: ColorUtil.textColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        backgroundColor: ColorUtil.headerColor,
        foregroundColor: ColorUtil.textColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPictureSize: Size.square(72),
              decoration: BoxDecoration(color: ColorUtil.headerColor),
              currentAccountPicture: InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: ColorUtil.subtleBgColor,
                      backgroundImage: AssetImage(
                        "assets/pictures/image01.jpg",
                      ),
                    ),
                  ],
                ),
              ),
              accountName: SizedBox(
                height: 25,
                child: Align(
                  alignment: AlignmentGeometry.bottomLeft,
                  child: Text(
                    "Ye Htet Aung",
                    style: TextStyle(
                      color: ColorUtil.textColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              accountEmail: Row(
                children: [
                  Icon(Icons.email, color: ColorUtil.textColor),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () async {
                      CommonFun.launchEmail();
                    },
                    child: SizedBox(
                      height: 25,
                      child: Align(
                        alignment: AlignmentGeometry.bottomLeft,
                        child: Text(
                          "207yehtetag@gmail.com",
                          style: TextStyle(
                            color: ColorUtil.textColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person, color: ColorUtil.textColor, size: 30),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: ColorUtil.textColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(color: ColorUtil.borderColor, thickness: 1),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.settings,
                color: ColorUtil.textColor,
                size: 30,
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                  color: ColorUtil.textColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(color: ColorUtil.borderColor, thickness: 1),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.device_unknown,
                color: ColorUtil.textColor,
                size: 30,
              ),
              title: Text(
                "DeviceHistory",
                style: TextStyle(
                  color: ColorUtil.textColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(color: ColorUtil.borderColor, thickness: 1),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.logout, color: ColorUtil.textColor, size: 30),
              title: Text(
                "Logout",
                style: TextStyle(
                  color: ColorUtil.textColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(color: ColorUtil.borderColor, thickness: 1),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: ColorUtil.backgroundColor,
      body: const Center(child: Text('Welcome to the Home Screen!')),
    );
  }
}
