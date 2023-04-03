import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              },
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.black,

                ),),
                  Padding(
          padding: const EdgeInsets.all(17.0),
          child: Container(
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
                SizedBox(width: 65,),
                Padding(
                  padding: const EdgeInsets.only(top: 17.0,),
                  child: Icon(Icons.phone,
                    color: Color.fromRGBO(31, 249, 12, 1),
                  ),
                ),

              ],
            ),

          ),
      ),
              SizedBox(height: 7,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(129, 123, 123, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3,),
                    child: Text(
                      'Congratulations, your request has been received',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(129, 123, 123, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3,),
                    child: Text(
                      'Hello,It’s Ahmed. I am happy to serve you',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(129, 123, 123, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3,),
                    child: Text(
                      'Congratulations, your request has been received',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(129, 123, 123, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3,),
                    child: Text(
                      'Congratulations, your request has been received',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(129, 123, 123, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3,),
                    child: Text(
                      'Hello,It’s Ahmed. I am happy to serve you',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(129, 123, 123, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3,),
                    child: Text(
                      'Congratulations, your request has been received',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(129, 123, 123, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3,),
                    child: Text(
                      'Hello,It’s Ahmed. I am happy to serve you',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(129, 123, 123, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3,),
                    child: Text(
                      'Hello,It’s Ahmed. I am happy to serve you',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(129, 123, 123, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3,),
                    child: Text(
                      'Congratulations, your request has been received',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: 86,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(63, 191, 120, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3,),
                        child: Text(
                          'Thank you',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),

                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                     SizedBox(
                       width: 270,
                         child:
                     Container(
                       height: 40,
                       child: TextField(
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
                         ),
                       ),
                     ),

                     ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(Icons.arrow_forward,color: Colors.white,),
                          )),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
