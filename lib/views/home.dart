// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;
  HomePage({super.key, required this.username});

  String selectedMenuItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: const [
                SizedBox(
                  height: 60,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Bienvenidos VotaFet',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                  subtitle: Text(
                    'Bienvenidos VotaFet',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/personne.png'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  ItemDashboard(
                    title: 'Votar',
                    iconData: CupertinoIcons.macwindow,
                    background: Colors.deepOrangeAccent,
                    onTap: () {
                      // Acciones a realizar cuando se toque el botón 'Votar'
                      print('Votar tocado');
                    },
                  ),
                  ItemDashboard(
                    title: 'Candidatos',
                    iconData: CupertinoIcons.person,
                    background: Colors.deepOrangeAccent,
                    onTap: () {
                      // Acciones a realizar cuando se toque el botón 'Candidatos'
                      print('Candidatos tocado');
                    },
                  ),
                  ItemDashboard(
                    title: 'Porcentaje de Votos',
                    iconData: CupertinoIcons.percent,
                    background: Colors.deepOrangeAccent,
                    onTap: () {
                      // Acciones a realizar cuando se toque el botón 'Porcentaje de Votos'
                      print('Porcentaje de Votos tocado');
                    },
                  ),
                  ItemDashboard(
                    title: 'Agregar',
                    iconData: CupertinoIcons.add_circled,
                    background: Colors.deepOrangeAccent,
                    onTap: () {
                      // Acciones a realizar cuando se toque el botón 'Agregar'
                      print('Agregar tocado');
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget ItemDashboard({
    required String title,
    required IconData iconData,
    required Color background,
    required VoidCallback onTap,
  }) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).primaryColor.withOpacity(1),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: background,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(title, style: Theme.of(context).textTheme.headline6)
            ],
          ),
        ),
      );
}
