import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/clippers.dart';
import 'package:project/login.dart';
import 'dart:io';
class registerUser extends StatefulWidget {
  @override
  State<registerUser> createState() => _registerUserState();
}
class _registerUserState extends State<registerUser> {
 int  _value = 1;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordShow = true;
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              UserBuilder(),
              IconButton(
                iconSize: 100,
                icon: image == null
                    ? Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Icon(Icons.account_circle,
                        color: Color.fromRGBO(0,0,0,0.25),
                      ),
                    ),
                    IconButton(onPressed:  uploadImage,
                      icon: Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 55,top:40,

                        ),
                        child: Icon(
                          Icons.add,
                          color: Color.fromRGBO(63, 191, 120, 1),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            cursorColor: Colors.black,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.25)),
                               floatingLabelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),),
                                labelText: 'First Name',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.25),),
                                  borderRadius:   BorderRadius.circular(15.0,),

                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0,)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:  Color.fromRGBO(0, 0, 0, 1),

                                  ),
                                  borderRadius: BorderRadius.circular(
                                    15.0,
                                  ),
                                ),
                                        prefixIcon: Icon(
                                          Icons.account_circle,
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                        ),
                              ),

                          ),
                        ),
                             SizedBox(
                               width: 14.0,
                             ),
                             Expanded(
                                 child: TextFormField(
                                   cursorColor: Colors.black,
                                   decoration: InputDecoration(
                                     labelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.25),),
                                     floatingLabelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),),
                                     labelText: 'last Name',
                                     border: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black),
                                       borderRadius:   BorderRadius.circular(15.0,),

                                     ),
                                     enabledBorder: OutlineInputBorder(
                                         borderRadius: BorderRadius.circular(15.0,)),
                                     focusedBorder: OutlineInputBorder(
                                       borderSide: BorderSide(
                                         color:  Color.fromRGBO(0,0,0,1),

                                       ),
                                       borderRadius: BorderRadius.circular(
                                         15.0,
                                       ),
                                     ),
                                     prefixIcon: Icon(
                                       Icons.account_circle,
                                       color: Color.fromRGBO(0,0,0,0.25),
                                     ),
                                   ),
                                 ),
                             ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color.fromRGBO(0,0,0,0.25)),
                        floatingLabelStyle: TextStyle(color: Colors.black),
                        labelText: ' Mobile Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,),
                          borderRadius:   BorderRadius.circular(15.0,),

                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0,)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:  Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                        ),
                                  prefixIcon: Icon(
                                    Icons.add_call,
                                    color: Color.fromRGBO(0,0,0,0.25),
                                  ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text(
                            'Date of birth',
                         style: TextStyle(
                           fontSize: 23.0,
                           fontWeight: FontWeight.w700,
                         ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Color.fromRGBO(0,0,0,0.25)),
                                  floatingLabelStyle: TextStyle(color: Colors.black),
                                  labelText: 'Day',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,),
                                    borderRadius:   BorderRadius.circular(15.0,),

                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0,)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:  Colors.black,

                                    ),
                                    borderRadius: BorderRadius.circular(
                                      15.0,
                                    ),
                                  ),

                                ),

                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Color.fromRGBO(0,0,0,0.25)),
                                  floatingLabelStyle: TextStyle(color: Colors.black),
                                  labelText: 'Month',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,),
                                    borderRadius:   BorderRadius.circular(15.0,),

                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0,)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:  Colors.black,

                                    ),
                                    borderRadius: BorderRadius.circular(
                                      15.0,
                                    ),
                                  ),

                                ),

                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child:TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Color.fromRGBO(0,0,0,0.25)),
                                  floatingLabelStyle: TextStyle(color: Colors.black),
                                  labelText: 'Year',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,),
                                    borderRadius:   BorderRadius.circular(15.0,),

                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0,)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:  Colors.black,

                                    ),
                                    borderRadius: BorderRadius.circular(
                                      15.0,
                                    ),
                                  ),

                                ),

                              ),
                            ),



                          ],
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 10.0 ,
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color.fromRGBO(0,0,0,0.25)),
                        floatingLabelStyle: TextStyle(color: Colors.black),
                        labelText: 'City',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,),
                          borderRadius:   BorderRadius.circular(15.0,),

                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0,)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:  Colors.black,

                          ),
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                        ),
                              prefixIcon: Icon(
                                Icons.account_balance_sharp,
                                color: Color.fromRGBO(0,0,0,0.25),
                              ),
                      ),

                    ),
                    SizedBox(
                      height: 10.0 ,
                    ),
                   Row(
                     children: [
                       Icon(
                         Icons.accessibility_new,
                         color: Colors.grey.shade600,
                       ),
                       SizedBox(
                         width: 8,
                       ),
                       Text(
                         'Gender :',
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,

                         ),
                       ),
                     ],
                   ),
                    Row(
                      children: [

                          Radio(

                              value: 1,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value = value!  ;
                                });
                              },

                          ),
                        Text(
                            'Male',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Radio(
                          value: 2,

                          groupValue: _value,
                          onChanged: (value){
                            setState(() {
                              _value = value!  ;
                            });
                          },
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),

                      ],
                    ),
                    Form(
                      key: formKey,
                      child: TextFormField(
                        cursorColor: Colors.black,

                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Color.fromRGBO(0,0,0,0.25),),
                          floatingLabelStyle: TextStyle(color: Colors.black,),
                          labelText: 'Email Address ',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,

                            ),
                            borderRadius: BorderRadius.circular(15.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0,),

                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(15.0,),
                          ),

                          prefixIcon: Icon(
                            Icons.email,
                            color: Color.fromRGBO(0,0,0,0.25),
                          ),

                        ),
                        validator: (Value)
                        {
                          if(Value!.isEmpty)
                          {
                            return 'Email address must not be empty';
                          }
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(Value))
                          {
                            return "email must be valid";
                          }
                          return null;
                        },

                      ),
                    ),
                    SizedBox(
                      height: 10.0 ,
                    ),
                    TextFormField(
                      cursorColor: Colors.black,

                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.25)),
                        floatingLabelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                        labelText: 'password',

                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(0, 0, 0, 0.25),

                          ),
                          borderRadius: BorderRadius.circular(15.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0,),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                          borderRadius: BorderRadius.circular(15.0,),
                        ),

                        suffixIcon: IconButton(

                          icon: Icon(
                            isPasswordShow ? Icons.visibility_off : Icons.visibility,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          ),

                          onPressed: ()
                          {
                            setState(() {
                              isPasswordShow   = !isPasswordShow ;
                            });
                          },
                        ),

                        prefixIcon: Icon(

                          Icons.lock,
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                        ),
                      ),
                      obscureText: isPasswordShow,

                      validator: (Value)
                      {
                        if(Value!.isEmpty)
                        {
                          return 'password must not be empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                        color: Color.fromRGBO(63, 191, 120, 1),
                        borderRadius: BorderRadius.circular(15.0,),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: MaterialButton(

                        onPressed: ()
                        {
                          if(formKey.currentState!.validate())
                          {
                            print(emailController.text);
                            print(passwordController.text);
                          }
                        },
                        child: Text(
                          'SIGNUP',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),


                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                        color: Color.fromRGBO(82, 89, 85, 1),
                        borderRadius: BorderRadius.circular(15.0,),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: MaterialButton(

                        onPressed: ()
                        {
                          Navigator.push(
                                 context,
                               MaterialPageRoute(
                               builder: (context) => login(),
                               ),
                                );
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
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
 Widget UserBuilder() => SingleChildScrollView(
   child: Column(
     children: [
       ClipPath(
         child: Container(
             height: 100,
             width: double.infinity,
             color: Color.fromRGBO(63, 191, 120, 1),
             child:Padding(
               padding: const EdgeInsets.symmetric(vertical: 15.0),
               child: Text(
                 textAlign: TextAlign.center,
                 'Sign Up',
                 style: TextStyle(color: Colors.white,
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
         ),
         clipper: clippers(),
       ),

     ],
   ),
 );
}
