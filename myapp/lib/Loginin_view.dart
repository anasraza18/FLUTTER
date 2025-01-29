import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Anas"),
      ),
      body: Image.network(
          "https://scontent.fkhi12-1.fna.fbcdn.net/v/t39.30808-6/470588988_2314894895530378_1865305021858890164_n.jpg?stp=dst-jpg_s960x960_tt6&_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeEl_3KwOY89M5HfSr5PTG3lqtgpAUw8DWOq2CkBTDwNY04o-pPVsOT5MwWPtqxo0kQ_L14G_TdNZeWzwrgMaQ8H&_nc_ohc=tBnj5yWtUnoQ7kNvgGlMChi&_nc_zt=23&_nc_ht=scontent.fkhi12-1.fna&_nc_gid=AYT1EUx1jyaBQgRUC0QxfaD&oh=00_AYBzF94E6j_UeRHRDRbfCLO3eepD0wVbPN8FzB19TugLRA&oe=679FACEE"),
    );
  }
}
