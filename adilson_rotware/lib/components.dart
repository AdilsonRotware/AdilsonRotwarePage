import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
        //print("Entered");
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
        //print("Exit");
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.oswald(
                shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, -8),
                    ),
                  ],
                fontSize: 25.0,
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent)
            : GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
        child: Text(
          widget.title,
        ),
      ),
    );
  }
}

class SansBold extends StatefulWidget {
  final String text;
  final double size;
  const SansBold(this.text, this.size, {Key? key}) : super(key: key);

  @override
  State<SansBold> createState() => _SansBoldState();
}

class _SansBoldState extends State<SansBold> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text, // Use widget.text em vez de apenas 'text'
      style: GoogleFonts.openSans(
        fontSize: widget.size, // Use widget.size em vez de apenas 'size'
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Sans extends StatefulWidget {
  final String text;
  final double size;
  const Sans(this.text, this.size, {Key? key}) : super(key: key);

  @override
  State<Sans> createState() => _SansState();
}

class _SansState extends State<Sans> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.openSans(
        fontSize: widget.size,
      ),
    );
  }
}
