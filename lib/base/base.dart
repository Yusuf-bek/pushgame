import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Pushgame extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PushgameWidgetState();
}

class _PushgameWidgetState extends State<Pushgame> {
  double heightContainerOne = 0.5;
  double heightContainerTwo = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onLongPress: () {
              if (heightContainerTwo <= 0.1) {
                heightContainerOne = 0.5;
                heightContainerTwo = 0.5;
                setState(() {
                  
                });
              }
            },
            onTap: () {
              if (heightContainerTwo > 0.1) {
                heightContainerOne += 0.01;
                heightContainerTwo -= 0.01;
              } else if (heightContainerTwo <= 0.1) {
                mydialogShow("Green Won");
              }
              setState(() {});
            },
            splashColor: Colors.indigo,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * heightContainerOne,
              color: Colors.green,
            ),
          ),
          InkWell(
            onLongPress: () {
              if (heightContainerOne <= 0.1) {
                heightContainerOne = 0.5;
                heightContainerTwo = 0.5;
                setState(() {
                  
                });
              }
            },
            onTap: () {
              if (heightContainerOne > 0.1) {
                heightContainerTwo += 0.01;
                heightContainerOne -= 0.01;
              } else if (heightContainerOne <= 0.1) {
                mydialogShow("Cyan Won");
              }
              setState(() {});
            },
            splashColor: Colors.red,
            
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * heightContainerTwo,
              color: Colors.cyan,
            ),
          ),
        ],
      ),
    );
  }

  mydialogShow(String winnerName) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
              child: Text(winnerName),
            ),
            backgroundColor: Colors.blue,
            content: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.width * 0.6,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage("assets/images/congwin.gif"),
                    fit: BoxFit.cover),
              ),
            ),
          );
        });
  }
}
