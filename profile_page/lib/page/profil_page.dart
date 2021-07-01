import 'package:flutter/material.dart';
import 'package:profile_page/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child : Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text("Profile Picture", style: TextStyle(
                  color: primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                ),

              SizedBox(
                height: 50,
              ),

              Image.asset(
                "assets/primary.png",
                width: 140,
                height: 140,
                fit: BoxFit.fill, /*Agar Memenuhi Karana Height dianggap Space Kosong */),
              
              SizedBox(
                height: 16,
              ),

              Text(
                "Anne Margaritha", style: TextStyle(
                  color: primary,
                  fontSize: 18,
                  fontWeight: FontWeight.w500 /* w500 Untuk medium */
                ),
                ),

                SizedBox(
                  height : 4
                ),

                Text(
                  "UX Designer", style: TextStyle(
                    fontSize: 16,
                    color: greyColor
                  ),
                ),
                
                SizedBox(
                  height: 40,
                ),

                Wrap(
                  spacing : 38, //Untuk yang kesamping
                  runSpacing: 30, //Untuk yang kebawah
                  children: [
                    Image.asset(
                      "assets/item.png", width: 80,
                      ),
                    Image.asset(
                      "assets/item-2.png", width: 80,
                      ),
                    Image.asset(
                      "assets/item-3.png", width: 80,
                      ),
                    Image.asset(
                      "assets/item-4.png", width: 80,
                      ),
                    Image.asset(
                      "assets/item-5.png", width: 80,
                      ),
                    Image.asset(
                      "assets/item-1.png", width: 80,
                      ),
                  ],
                  ),

                SizedBox(
                  height : 55
                ),

                Container(
                  width: 224,
                  height: 55,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16) 
                      ),
                    color: Colors.white,
                    onPressed: (){
                      showModalBottomSheet(
                        context: context , 
                        builder: (context){
                          return Container(
                            height: 290,
                            padding: EdgeInsets.symmetric(
                              vertical:50,

                            ),
                            color : greyColor,
                            child : Column(
                              children: [
                                Text
                                ("Update Photo", style: TextStyle(
                                  color: primary,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500
                                ),
                                ),
                                
                                SizedBox(
                                  height:12
                                ),

                                Text(
                                  "You are only able to change\nthe picture profile once",style: TextStyle(
                                    fontSize: 18,
                                    color : primary,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                                SizedBox(
                                  height :30,
                                ),

                                Container(
                                  width:224,
                                  height:55,
                                  child : RaisedButton(
                                    color: orangeColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Continue",style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,

                                      ),
                                    
                                    ),
                                  )
                                )
                              ],
                            )
                          );
                        }
                        );
                    },
                    child: Text
                    ("Update Profile", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: primary
                    ),
                    ),
                  )
                ),

                SizedBox(
                  height: 76,
                )

              ],
            ),
          ),
        ), 
        ),
    );
  }
}