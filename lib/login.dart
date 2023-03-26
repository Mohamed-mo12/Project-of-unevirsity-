import 'package:custom_signin_buttons/button_data.dart';
import 'package:custom_signin_buttons/button_list.dart';
import 'package:flutter/material.dart';
import 'package:project/password1.dart';
import 'package:project/registerUser.dart';


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPasswordShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      body: SafeArea(

        child: Center(
          child: SingleChildScrollView(
            child: Column(

              children: [

                Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Form(
                    key: formKey,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [


                         Container(
                           child: Image(
                             image: AssetImage(
                               'assets/images/Asset 1.png',
                           ),
                           ),
                            height: 90,
                           width: 90,
                         ),
                       SizedBox(
                         height: 10,
                       ),
                       Container(
                         child: Image(
                             image: AssetImage(
                                 'assets/images/a2-removebg-preview.png',
                             ),
                         ),

                         width: 350,
                       ),
                        TextFormField(
                          cursorColor: Colors.black,

                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.25)),
                            floatingLabelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                            labelText: 'Email Address ',



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

                            prefixIcon: Icon(
                              Icons.email,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),

                          ),
                          validator: (Value)
                          {
                            if(Value!.isEmpty)
                            {
                              return 'Email address must not be empty';
                            }
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(Value))
                                //"^[a-zA-Z0-9-]+@[a-zA-Z0-9-]+(?:[a-zA-Z0-9-]+)*")
                                //.hasMatch(Value))
                            {
                              return "email must be valid";
                            }
                            return null;
                          },

                        ),
                        SizedBox(
                          height: 20.0,
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
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),


                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => password1(),
                                    ),
                                  );

                                },
                                child: Text(
                                    'Forgotten Password?',
                                  style: TextStyle(
                                    color: Color.fromRGBO(160, 155, 155, 1),
                                  ),
                                ),

                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                ),
                                child: Text(
                                  'OR',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),

                                  ),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            SignInButton(
                              button: Button.Facebook,
                              mini: true,
                              onPressed: (){},
                            ),
                              Spacer(),
                              SignInButton(
                                button: Button.Google,
                                mini: true,
                                onPressed: (){},
                              ),
                              Spacer(),
                              SignInButton(
                                button: Button.Apple,
                                mini: true,
                                onPressed: (){},
                              ),
                            ],
                          ),
                            SizedBox(
                              height: 30,
                            ),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                'Don\'t have an account?'
                            ),
                            TextButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return registerUser();
                                    },


                                  ),
                                );
                              },
                              child: Text(
                                  'Sign up',
                                style: TextStyle(
                                  color: Color.fromRGBO(63, 191, 120, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
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

