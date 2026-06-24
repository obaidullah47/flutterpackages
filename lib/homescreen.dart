import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  static const String id = "homescreen";
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Pub Dev",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffC9B896), Color(0xff8B5A3C)],
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt,)),
              Tab(child: Icon(Icons.chat_bubble_outline)),
              Tab(child: Icon(Icons.call),),
              Tab(child: Icon(Icons.settings),),
              Tab(child: Icon(Icons.person_2),),
            ],
          ),
        ),
        drawer: Drawer(
          width: 240,

          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color(0xff8B5A3C).withOpacity(0.5),
                  child: Text(
                    "OA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ),
                accountName: Text(
                  "Obaidullah ch",
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "Obaidullahch42@gmail.com",
                  style: TextStyle(color: Colors.black45),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffC9B896), Color(0xff8B5A3C)],
                  ),
                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(
                  Icons.home_filled,
                  color: Color(0xff8B5A3C).withOpacity(0.5),
                ),
              ),
              ListTile(
                title: Text("Profile"),
                leading: Icon(
                  Icons.person,
                  color: Color(0xff8B5A3C).withOpacity(0.5),
                ),
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Color(0xff8B5A3C).withOpacity(0.5),
                ),
              ),
              ListTile(
                title: Text("Contact Us"),
                leading: Icon(
                  Icons.contact_support,
                  color: Color(0xff8B5A3C).withOpacity(0.5),
                ),
              ),
              SizedBox(height: 400),
              Divider(),
              ListTile(
                title: Text("Logout"),
                leading: Icon(
                  Icons.login_outlined,
                  color: Color(0xff8B5A3C).withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
