import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: width,
            height: height*0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assests/images/signup.png"
                  ),
                  fit: BoxFit.cover
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height*0.18,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white38,
                  radius: 40,
                  backgroundImage: const AssetImage(
                    "assests/images/profile1.png"
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 6,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2)
                        ),
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Your email id",
                      prefixIcon: const Icon(Icons.email, color:Colors.deepOrangeAccent),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0
                          )
                      ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height:20),
                Container(
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2)
                        ),
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0
                          )
                      ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height:20),
                // Row(
                //   children: [
                //     Expanded(child: Container(),),
                //     const Text("Forgot your Password?",
                //       style: TextStyle(
                //           fontSize:20,
                //           color:Colors.grey
                //       ),
                //     ),
                //
                //   ],
                // ),


              ],
            ),
          ),
          SizedBox(height:width*0.06,),
          Container(
            width: width*0.4,
            height: height*0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  image: AssetImage(
                      "assests/images/loginbtn.png"
                  ),
                  fit: BoxFit.cover
              ),
            ),
            child: const Center(
              child: Text("Sign up",
                style: TextStyle(
                  fontSize:30,
                  fontWeight: FontWeight.bold,
                  color:Colors.white,
                ),
              ),
            ),

          ),
          SizedBox(height: width*0.1,),
          RichText(text: const TextSpan(text:"Don\'t have an account?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
              children: [
                const TextSpan(
                    text:"  Create",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    )
                )
              ]
          )
          )
        ],
      ),
    );
  }
}
