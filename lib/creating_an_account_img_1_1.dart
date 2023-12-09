import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAnAccount extends StatelessWidget {
  const CreateAnAccount({Key? Key}): super(key:Key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent.shade700,
      body: SafeArea(
        bottom: false,
        child: Column(
            children: [
            Padding(
                padding: EdgeInsetsDirectional.all(12),
                 child:Row(

                  children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(CupertinoIcons.xmark,color: Colors.white,),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Create your account',style: TextStyle(color: Colors.white,fontSize: 30),)
                      ],
                    ),
                  ),
                   Image.network('https://static.vecteezy.com/system/resources/previews/019/466/710/original/3d-illustration-of-a-chat-on-a-mobile-phone-hand-with-smartphone-and-speech-chatting-sms-exchange-png.png',width: 150,height: 200,fit:BoxFit.cover,)
                ],
              ),
            ),
              Expanded(
                 child: Container(
                   padding: EdgeInsets.all(20),
                   width: double.maxFinite,
                  decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(50))
                  ) ,
                   child:SingleChildScrollView(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Syndicate ID No:',style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.start,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: '777777777',
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                               color: Colors.grey.shade100,
                              ),
                            ),
                          ),
                        ),

                      Text('Email:',style: TextStyle(color: Colors.grey,fontSize: 16),),
                      TextFormField(
                      decoration: InputDecoration(
                        hintText: 'hager@gmail.com',
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                          ),
                        ),
                      ),
                      ),
                        Text('password:',style: TextStyle(color: Colors.grey,fontSize: 16),),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ),
                          obscureText: true ,
                          obscuringCharacter: '*',
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () => print('forget password '),
                                  child: Text('forget password?',textAlign: TextAlign.end,style: TextStyle(fontSize: 15),)),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                    onPressed: () => print('Sign Up'),
                                    child: Text('Sign Up',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.purpleAccent.shade700,)
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Or',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 20),),

                              SizedBox(
                                width: 150,
                                height: 50,
                                child: ElevatedButton(
                                    onPressed: () => print('Login'),
                                    child: Text('Login',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.teal.shade200,)
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('You are not a member yet ?',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 20),),
                              TextButton(
                                  onPressed: () => print('Visit as guest '),
                                  child: Text('Visit as guest',textAlign: TextAlign.end,style: TextStyle(fontSize: 15),)),

                            ],
                          ),
                        ),

                      ],
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
