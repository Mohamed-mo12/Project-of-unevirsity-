import 'package:flutter/material.dart';
import 'package:project/profile.dart';
class home2 extends StatefulWidget {
  const home2({Key? key}) : super(key: key);
  @override
  State<home2> createState() => _home2State();
}
class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              SizedBox(height: 24,),
              Container(
                height: 500,
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
                ],
              ),
            ],
          ),
          SizedBox(width: 45,),
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

