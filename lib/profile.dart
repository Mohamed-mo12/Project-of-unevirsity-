import 'package:flutter/material.dart';

class profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/IMG-20230302-WA0008.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  },
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black,

                    ),),
                  SizedBox(width: 20,),
                  Text(
                    'Ahmed’s Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,

                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image(
                    image: AssetImage('assets/images/man.png'),
                    height: 88,
                    width: 88,
                  ),
                ),
              ),
              SizedBox(height: 24,),
              Text('Ahmed Mohamed',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    Text(
                      'Service',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Container(
                width: 300,
                height: 34,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(217, 217, 217, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Electrecity',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                   child: Container(
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                     color: Color.fromRGBO(217, 217, 217, 1),
                     ),
                     child: Image(
                       image: AssetImage('assets/images/WhatsApp_Image_2023-03-21_at_9.03.45_PM-removebg-preview.png'),
                       height: 32,
                       width: 32,
                     ),
                   ),
                 ),
                  SizedBox(width: 11,),
                  Text('Start From 100 L.E',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('About',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Container(
                width: 340,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(217, 217, 217, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text('Hello, I am Ahmed.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
