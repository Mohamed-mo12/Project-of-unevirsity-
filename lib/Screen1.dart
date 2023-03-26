import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();

}

class _Screen1State extends State<Screen1> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                    Text(
                      'FIX IT NOW',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0,
                        color: Colors.teal.shade800,
                        //indigo[400]
                      ),
                    ),
                 SizedBox(
                   height: 40.0,
                 ),
                 Container(
                   child: Image(
                       image: AssetImage(
                           'assets/images/man.jpg',

                       ),
                     height: 210.0,
                     width: 210.0,

                   ),
                 ),
              SizedBox(
                height: 100.0,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
              ),
              child: Container(
                width: double.infinity,

                         decoration: BoxDecoration(
                           color: Colors.teal.shade800,
                           borderRadius: BorderRadius.circular(15,),
                         ),
                clipBehavior: Clip.antiAliasWithSaveLayer,

                child: MaterialButton(


                    onPressed: (){
                   //   Navigator.push(
                     //   context,
                       // MaterialPageRoute(
                          //  builder: (context) => login(),


                       // ),
                    //  );
                    },

                    child: Text(


                        'LOGIN',
                      style: TextStyle(
                        color: Colors.white
                      ),

                    ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
              ),
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.teal.shade800,
                  borderRadius: BorderRadius.circular(15,),

                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: MaterialButton(

                  onPressed: (){
                  // Navigator.push(
                   //   context,
                   //   MaterialPageRoute(
                      //  builder: (context) {
                      //    return registerUser();
                       // },


                    //  ),
                  //  );
                  },
                  child: Text(

                    'SIGNUP',
                    style: TextStyle(
                        color: Colors.white
                    ),

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
