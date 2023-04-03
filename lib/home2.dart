import 'package:flutter/material.dart';
import 'package:project/profile.dart';
import 'package:rate/rate.dart';
class home2 extends StatefulWidget {
  const home2({Key? key}) : super(key: key);
  @override
  State<home2> createState() => _home2State();
}
class _home2State extends State<home2> {
  @override
  BuildContext ? dcontext;
  dismissDialog(context){
    if(dcontext ==null){
      Navigator.pop(context!);
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                Text('Services',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 4,),
                Text('(Choose Your Type Of Service)',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color.fromRGBO(242, 164, 68, 1),
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                    Container(
                      height: 33,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromRGBO(255, 193, 114, 1),),
                      child: TextButton(
                          onPressed: (){},
                          child: Text(
                            'Electrecity',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      height: 33,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromRGBO(217, 217, 217, 1),),
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          'Carpentry',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      height: 33,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromRGBO(217, 217, 217, 1),),
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          'Plumbing',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Container(
                  height: 39,
                  child: TextFormField(

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
                ),
                SizedBox(height: 16,),
                Container(
                  height: 550,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index){
                      return buildUserItem();
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
  Widget buildUserItem(){
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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),

              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image(
                  image: AssetImage('assets/images/man.png'),
                  height: 70,
                  width: 70,
                ),
              ),

            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(

                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => profile()));
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
                  SizedBox(
                    width: 100,
                    height: 20,
                    child: ElevatedButton(
                      onPressed: () async{
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            icon: Image(
                              width: 118,
                              height: 105,
                              image: AssetImage('assets/images/WhatsApp_Image_2023-03-23_at_12.36.25_AM-removebg-preview.png',),
                            ),
                            title: Text('Rate Your Technician?',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            actions: <Widget>[
                              Center(
                                child: Rate(
                                  iconSize: 35,
                                  color: Color.fromRGBO(255, 190, 30, 1),
                                  allowClear: true,
                                  allowHalf: true,
                                  initialValue: 3.5,
                                  readOnly: false,
                                  onChange: (value) => print(value),
                                ),
                              ),
                              SizedBox(height: 10,),
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(8),
                                  border: OutlineInputBorder( borderRadius: BorderRadius.circular(15),),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                height:35 ,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(63, 191, 120, 1),
                                  borderRadius: BorderRadius.circular(15.0,),
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: TextButton(onPressed: (){},
                                  child: Text('Send',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          );
                        },
                        );
                      },
                      child: Text('Rate Me',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 0, 0.58),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.transparent,elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          //side: BorderSide(width: double.infinity,),
                        ),
                      ),

                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 17.0,),
            child: Text(
              'Online',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color.fromRGBO(31, 249, 12, 1),
              ),
            ),
          ),


        ],
      ),

    );
  }
}

