import 'package:flutter/material.dart';


class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage>with SingleTickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5B01F),
    body: SafeArea(
    top: true,
    child: Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          width: 100,
          height: 372,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: Image.asset(
                'assets/images/undraw_breakfast_psiw.png',
              ).image,
            ),
            borderRadius: BorderRadius.circular(31),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Colors.grey,
              width: 2,
            ),
          ),
        ),
    Padding(
    padding: EdgeInsetsDirectional.fromSTEB(30, 40, 0, 0),
    child: Column(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SelectionArea(
    child: Text(
    'Welcome to \nBite Buzz',
    style: TextStyle(
    fontFamily: 'Rimba Andalas',
    fontSize: 30,
    letterSpacing: 0,
    fontWeight: FontWeight.bold,
    ),
    )
    ),
    Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
    child: SelectionArea(
    child: Text(
    'Discover your next delicious buzz.\nFood so good, it will create a buzz.',
    style: TextStyle(
    fontSize: 16,
    letterSpacing: 0,
    fontWeight: FontWeight.normal,
    ),
    ))
    ),
    Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
    child: Container(
    width: 181,
    height: 50,
    constraints: BoxConstraints(
    maxHeight: 32,
    ),
    decoration: BoxDecoration(
    color: Color(0xFF6A62B7),
    boxShadow: [
    BoxShadow(
    blurRadius: 4,
    color: Color(0x32171717),
    offset: Offset(
    0.0,
    2,
    ),
    )
    ],
    borderRadius: BorderRadius.circular(30),
    ),
    child: Padding(
    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
    child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Padding(
    padding:
    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
    child: Text(
    'Let’s Go!',
    style: TextStyle(
    color: Colors.white,
    fontSize: 16,
    letterSpacing: 0,
    fontWeight: FontWeight.normal,
    ),
    ),
    ),
    Padding(
    padding:
    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
    child: Icon(
    Icons.arrow_right_alt,
    color: Colors.white,
    size: 30,
    ),
    ),

    ]
    )
    )
    )
    )
      ],
    ),
    ),
    ]
    )
    )
    );
  }
}

