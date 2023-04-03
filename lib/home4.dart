

import 'package:flutter/material.dart';
import 'package:project/Messages.dart';

class home4 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical:17 ,),
                      child: Text(
                        'Messages',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 23,
                      ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 550,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index){
                      return buildChatItem(context);
                    },
                    separatorBuilder: (context, index){
                      return SizedBox(height: 24,);
                    },
                    itemCount: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildChatItem(context){
    return Container(
      height: 79,
      width: 360,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(217, 217, 217, 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/images/man.png'),
                  height: 70,
                  width: 70,
                ),
              ),

            ),
          ),
          Column(
            children: [
              TextButton(

                onPressed: ()  {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Messages();
                  }));
                },
                child: Text('Ahmed Mohamed',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),

              ),
              Row(
                children: [
                  Text(' Technical/ 3.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 0.35),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.star,color: Color.fromRGBO(252, 214, 14, 1),),
                ],
              ),
            ],
          ),
          SizedBox(width: 45,),
          Padding(
            padding: const EdgeInsets.only(top: 17.0,),
            child: IconButton(
              icon: Icon(Icons.phone,
              color: Color.fromRGBO(31, 249, 12, 1),
              ),
              onPressed: (){},
            ),
          ),

        ],
      ),

    );
  }
}
