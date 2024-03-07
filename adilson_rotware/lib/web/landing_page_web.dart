import 'package:adilson_rotware/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
        ),
        title: Row(
          children: [
            Spacer(flex: 5),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Portfolio"),
            Spacer(),
            TabsWeb("Site"),
            Spacer(),
            TabsWeb("Sobre"),
            Spacer(),
            TabsWeb("Contacto"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //First Page
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          )),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold("Olá, Eu sou", 15),
                    ),
                    SizedBox(height: 15.0),
                    SansBold("Adilson Rodrigues", 55.0),
                    Sans("Desenvolvedor Flutter & Laravel", 30.0),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20),
                        Sans("arodriguestito@gmail.com", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20),
                        Sans("+244 923 578 876", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20),
                        Sans("Luanda, Luanda, Angola", 15.0),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/image-circle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Segunda Página
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/web.jpg", height: heightDevice / 1.7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("Sobre mim", 40.0),
                    SizedBox(height: 15),
                    Sans(
                        "Olá! Sou Adilson Rodrigues Tito, um entusiasta da programação. ",
                        15),
                    Sans(
                        "Com foco principal em Flutter (Android, iOS e web) e Laravel para a construção de robustas aplicações web.",
                        15),
                    Sans(
                        "Tenho dedicado minha carreira ao aprimoramento constante das minhas habilidades tecnológicas.",
                        15),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Laravel", 15.0),
                        ),
                        SizedBox(height: 7),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Flutter", 15.0),
                        ),
                        SizedBox(height: 7),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Android", 15.0),
                        ),
                        SizedBox(height: 7),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Ios", 15.0),
                        ),
                        SizedBox(height: 7),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Windows", 15.0),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          //Terceira Página
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("O que faço?", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/webL.png",
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(height: 10),
                            SansBold("Desenvolvimento Web", 15.0),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/app.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 10),
                            SansBold("Desenvolvimento de Aplicativos", 15.0),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/firebase.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 10),
                            SansBold("Desenvolvimento Back-End", 15.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          //Quarta Página
          Container(
            height: heightDevice,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold("Contacte-me", 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextForm(
                        width: 350,
                        heading: "Primeiro Nome",
                        hitText: "Por favor insira o seu primeiro nome!",
                      ),
                      SizedBox(height: 15),
                      TextForm(
                          width: 350,
                          heading: "E-mail",
                          hitText:
                              "Por favor insira o seu endereço de e-mail!"),
                    ],
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
