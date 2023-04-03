import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class orderDetails extends StatelessWidget {
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        Text(
                          'Order Details',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black12,
                      height: 20.0,
                      thickness: 4.0,
                    ),
                    Text(
                        'Order 1 details',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24.0,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: [
                        Text('5-Nov-2022, 3.00 PM',
                            style: TextStyle(
                                color: Colors.black87,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                        ),
                        SizedBox(width: 120.0,),
                        Text(
                          'EGP200.00',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: Text(
                            'Cash',
                            style: TextStyle(
                                color: Colors.black87,
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60.0,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Icon(Icons.circle,color: Colors.black,size: 10.0,),
                        ),
                        SizedBox(width: 8.0,),
                        Text(
                          '6th of October,Giza governorate\n 30226010,Egypt',
                          style: TextStyle(
                              color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('You Rated Ahmed',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        SizedBox(width: 10,),
                        Rate(
                          iconSize: 20,
                          color: Color.fromRGBO(255, 190, 30, 1),
                          allowClear: true,
                          allowHalf: true,
                          initialValue: 4,
                          readOnly: true,
                          onChange: (value) => print(value),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Divider(
                      height: 13.0,
                      thickness: 3.0,
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image:AssetImage('assets/images/WhatsApp_Image_2023-04-01_at_16.20.39-removebg-preview.png',) ,
                          height: 31,
                          width: 31,
                        ),
                        SizedBox(width: 10.0,),
                        Text(
                          'You order with Ahmed',
                          style: TextStyle(
                              fontSize: 23.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ) ,
                    SizedBox(height: 10.0,),
                    Divider(
                      height: 30.0,
                      thickness: 3.0,
                    ),
                    Image(
                      image: AssetImage(
                          'assets/images/WhatsApp_Image_2023-03-27_at_02.04.56-removebg-preview.png',
                      ),
                    ),
                  ]
              ),
            ),
          ),
        )
    );










  }
}


