// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/common_widgets/widget_utilisable.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Non Utilisateur"),
            accountEmail: const Text("Email"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('images/man.jpg'),
              ),
            ),
            decoration: decores(context),
          ),
          ListTile(
            leading: const Icon(Icons.upload),
            title: const Text("Recuperation"),
            onTap: () => print('Recuperation'),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: () => print('Votre Profil'),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text("Message"),
            onTap: () => print('Message'),
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text("Partage"),
            onTap: () => print('Partage'),
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Notification"),
            onTap: () => print('Notification'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Parametre"),
            onTap: () => print('Parametrage'),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Deconnexion"),
            onTap: () => print('deconnecte'),
          ),
        ],
      ),
    );
  }
}
