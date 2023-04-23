import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [Colors.purpleAccent.shade100,
            Colors.purpleAccent.shade400,
            ],
          ),
        ),
        child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: const Image(
                    image: AssetImage('images/logo.png'),
                  height: 300,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15.0,top: 15.0, right: 15.0),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    border: OutlineInputBorder(),
                    labelText: 'Password', labelStyle: TextStyle(color: Colors.white),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15,15,15,5),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    border: OutlineInputBorder(),
                    labelText: 'Password', labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 260.0),
                child: TextButton(onPressed: (){},
                child: const Text('Forgot Password?', style: TextStyle(color: Colors.white),),
                ),
              ),
              Container(
                height: 50,
                width: 400,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: (){},
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Does not have an Account?', style: TextStyle(
                      color: Colors.black),),
                  TextButton(
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    onPressed: (){},
                  )
                ],
              ),
              const Center(
                child: Text('Or', style: TextStyle(color: Colors.black, fontSize: 15,),)
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      color: Colors.white,
                      elevation: 6,
                      borderRadius: BorderRadius.circular(50.0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: (){},
                        child: Column(
                          children: [
                            Ink.image(
                              image: const AssetImage('images/ffb.png'),
                              height: 65,
                              width: 65,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: .2,),
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 6,
                      borderRadius: BorderRadius.circular(50.0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: (){},
                        child: Column(
                          children: [
                            Ink.image(
                              image: const AssetImage('images/google.png'),
                              height: 65,
                              width: 65,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 1,),
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 6,
                      borderRadius: BorderRadius.circular(50.0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: (){},
                        child: Column(
                          children: [
                            Ink.image(
                              image: const AssetImage('images/ig3.png'),
                              height: 65,
                              width: 65,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 1,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
