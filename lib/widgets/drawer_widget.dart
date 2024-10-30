import 'package:app1/pages/anime_page.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.purple]),
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/img1.jpg"),
                radius: 60,
              ),
            ),
          ),
          ListTile(
            title: const Text("Accueil",style:TextStyle(fontSize: 26)),
            leading: const Icon(Icons.home, color: Colors.limeAccent),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          Divider(height: 5,color: Colors.black,),
          ListTile(
            title: const Text("Anime",style:TextStyle(fontSize: 26)),
            leading: const Icon(Icons.home, color: Colors.limeAccent),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/anime');
            },
          ),
          Divider(height: 5,color: Colors.black,),

          ListTile(
            title: const Text("Stateful",style:TextStyle(fontSize: 26)),
            leading: const Icon(Icons.home, color: Colors.limeAccent),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () {
              Navigator.pushNamed(context, '/stateful');
            },
          ),
          Divider(height: 5,color: Colors.black,),
          ListTile(
            title: const Text("First Layout", style: TextStyle(fontSize: 26)),
            leading: const Icon(Icons.grid_view, color: Colors.limeAccent),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () {
              Navigator.pushNamed(context, '/firstlayout');
            },
          ),
          Divider(height: 5, color: Colors.black),
          ListTile(
            title: const Text("Calcule", style: TextStyle(fontSize: 26)),
            leading: const Icon(Icons.fitness_center, color: Colors.limeAccent),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () {
              Navigator.pushNamed(context, '/calcule');
            },
          ),
          Divider(height: 5, color: Colors.black),


          ListTile(
            title: const Text("Deconnect",style:TextStyle(fontSize: 26)),
            leading: const Icon(Icons.close, color: Colors.limeAccent),
          ),
          Divider(height: 5, color: Colors.black),

        ],
      ),
    );
  }
}
