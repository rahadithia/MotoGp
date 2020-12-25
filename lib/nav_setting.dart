import 'package:flutter/material.dart';
import './hal_about.dart' as abt;
import './hal_help.dart' as hlp;


class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: new OutlineButton(
              //borderSide: BorderSide(width: 0.0),
              child: new Text(
                'About Application',
                style: new TextStyle(
                  fontFamily: 'Serif',
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return abt.About();
                }));
              },
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: OutlineButton(
              //borderSide: BorderSide(width: 0.0),
              child: new Text(
                'Help',
                style: new TextStyle(
                  fontFamily: 'Serif',
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return hlp.Help();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}