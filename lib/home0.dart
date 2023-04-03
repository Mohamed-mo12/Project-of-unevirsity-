import 'package:flutter/material.dart';
import 'package:project/home1.dart';
import 'package:project/home2.dart';
import 'package:project/home3.dart';
import 'package:project/home4.dart';

class home0 extends StatefulWidget {
  const home0({Key? key}) : super(key: key);

  @override
  State<home0> createState() => _home0State();
}

class _home0State extends State<home0> {
  @override

  int currentIndex = 0;
  List<Widget> screens =  [
    home1(),
    home2(),
    home3(),
    home4(),
  ] ;
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon( Icons.home_filled,
            ),
            label:'' ,

          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.manage_accounts_sharp,
            ),
            label:'' ,
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.account_circle,
            ),
            label:'' ,
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.message_outlined,
            ),
            label:'' ,
          ),
        ],
        elevation: 0,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        fixedColor: Color.fromRGBO(242, 164, 68, 1),

      ),
    );
  }
}
