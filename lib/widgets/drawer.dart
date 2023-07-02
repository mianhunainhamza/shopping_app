import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/theme.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: MyTheme.getThemeName(context) ? Colors.grey : Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.all(0),
                  accountName: Text(
                    "HONEY",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  accountEmail: Text("mianhunainhamza@gmail.com",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.info,
                color: Colors.white,
              ),
              title: Text(
                "About",
                textScaleFactor: 1.3,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Log Out",
                textScaleFactor: 1.3,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
