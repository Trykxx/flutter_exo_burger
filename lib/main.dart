import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp(appTitle: "Burger Queen",));
}

// Classe qui hérite de Stateless
class MyApp extends StatelessWidget {
  final String appTitle;
  // Constructeur
  const MyApp({super.key, required this.appTitle});

  // This widget is the root of your application.
  // Build va construire le visuel de l'application, il retourne un widget (MaterialApp)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Titre a but descriptif de l'application
      title: appTitle,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
// Propriété de ma classe Stateless
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.person),
          ],
          backgroundColor: Colors.pinkAccent.shade100,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 180, // Augmenté légèrement pour accommoder le nouveau contenu
                color: Colors.pinkAccent.shade100,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Première ligne : localisation et distance
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              SizedBox(width: 5),
                              Text("Mon restaurant le plus proche"),
                              Spacer(),
                              Text("4km"),
                            ],
                          ),

                          SizedBox(height: 12), // Espace entre la ligne et le bouton

                          // Bouton Commander
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                            ),
                            child: Text(
                                "Commander",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}