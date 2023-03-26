//import 'dart:async';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  File? image;
  final imagePicker = ImagePicker();

  Future uploadImage() async {
    var pickedimage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedimage != null) {
      setState(() {
        image = File(pickedimage.path);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,

        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,

          ),
        ),
        title: Text(
          'Your Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 100,
                  icon: image == null
                      ? Stack(
                        children: [
                          ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child:
                          Image(
                           image:
                            AssetImage(
                                'assets/images/photo_2023-02-21_23-29-07-removebg-preview.png',
                            ),
                          ),
                        //  Icon(Icons.account_circle,
                        //   color: Color.fromRGBO(0,0,0,0.25),
                          //),
                          ),
                          IconButton(onPressed:  uploadImage,
                            icon: Padding(
                              padding: const EdgeInsetsDirectional.only(
                                start: 55,top:40,

                              ),
                              child: Icon(
                                Icons.edit,
                                color: Colors.black,
                                size: 30,

                              ),
                            ),
                          ),
                        ],
                      )
                      : ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(100),
                    child: Image.file(
                      image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  onPressed: uploadImage,
                ),
                Text(
                  "Mohamed Sayed",
                  // style: Theme.of(context).textTheme.headlineSmall,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "0123456789",
                  //  style: Theme.of(context).textTheme.bodyLarge,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.67),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
               SizedBox(height: 51,),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(217, 217, 217, 1),),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.cake_rounded,),
                        )),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Text(
                            '20/3/1995',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Date of birth',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w200
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 28,),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(217, 217, 217, 1),),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.account_circle,),
                          )),
                      SizedBox(width: 8,),
                      Column(
                        children: [
                          Text(
                            'Male',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Gender',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w200
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                SizedBox(height: 28,),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(217, 217, 217, 1),),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.location_on_outlined,),
                        )),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Text(
                          'Giza',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'City',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 28,),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(217, 217, 217, 1),),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.email_outlined,),
                        )),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'mohamed_sayed95@gmail.com',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 70,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(63, 191, 120, 1),
                  ),

                  child: IconButton(
                    onPressed: (){},
                    icon: Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,


                      ),
                    ),
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

