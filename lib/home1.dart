
import 'package:flutter/material.dart';
class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {

bool electrical  = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: Colors.black,
                        size: 42,
                      ),
                      SizedBox(width: 7,),
                      Text(
                          'Hello Mohamed',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 23,
                          color: Color.fromRGBO(18, 34, 55, 1),
                        ),
                      ),
                      SizedBox(width: 30,),
                      IconButton(
                        icon: Icon(
                          Icons.notifications,
                          size: 25,
                        ),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.location_on,
                          size: 25,
                        ),
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(217, 217, 217, 1),

                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0,),

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(217, 217, 217, 1),
                      ),
                      borderRadius: BorderRadius.circular(15.0,),
                    ),

                    suffixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(217, 217, 217, 1),
                    ),

                  ),

                ),
                SizedBox(height: 20,),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                       boxShadow: [
                         BoxShadow(
                         spreadRadius: 1,
                         blurRadius: 15,
                         color: Colors.grey,
                       ),
                  ]
                  ),
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage(
                            'assets/images/IMG-20230302-WA0008.jpg',),
                        height: 150.0,
                        width: 300.0,
                        fit: BoxFit.cover,

                      ),
                      Image(
                          image: AssetImage('assets/images/home.png'),
                        height: 130.0,
                        width: 130.0,
                      ),
                      Positioned(
                        top: 50,
                        right: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'FIX IT ',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text('EASILY NOW',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(63, 191, 120, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Row(
                    children: [
                      Icon(Icons.menu,),
                      SizedBox(width: 5,),
                      Text('Services',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: electrical ? Color.fromRGBO(242, 185, 113, 1): Color.fromRGBO(217, 217, 217, 1),
                          ),
                            child: IconButton(
                                onPressed: ()
                                  {
                                    setState(() {
                                      electrical  = true;
                                    });
                                  },
                                icon: Icon(Icons.electrical_services,),
                              color: Color.fromRGBO(63, 191, 120, 1),
                            ),
                        ),
                      ),
                      SizedBox(width: 40,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: !electrical ? Color.fromRGBO(242, 185, 113, 1): Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  electrical = false;
                                });
                              },
                              icon: Icon(Icons.carpenter,),
                            color: Color.fromRGBO(63, 191, 120, 1),
                          ),),
                      ),
                      SizedBox(width: 40,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.plumbing,),
                            color: Color.fromRGBO(63, 191, 120, 1),
                          ),),
                      ),
                      SizedBox(width: 40,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.cleaning_services,),
                            color: Color.fromRGBO(63, 191, 120, 1),
                          ),),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }


}
