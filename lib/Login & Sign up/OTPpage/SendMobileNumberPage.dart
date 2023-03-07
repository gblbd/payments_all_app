import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../signUp/SignUpPage.dart';
import 'OTPpage.dart';

class SendMobileNumberPage extends StatefulWidget {
  const SendMobileNumberPage({Key? key}) : super(key: key);

  @override
  State<SendMobileNumberPage> createState() => _SendMobileNumberPageState();
}

class _SendMobileNumberPageState extends State<SendMobileNumberPage> {

  TextEditingController _mobileNumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFFFFF8F8),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              Image.asset('assets/images/Payments_All.png',height: 70,width: 70,),
              SizedBox(height: 20,),
              Text('Enter mobile number for Login/Registration',
                style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 22
                ),
              ),
              SizedBox(height: 20,),

              Text('Mobile Number',
               style: GoogleFonts.openSans(
                   color: Colors.black,
                   fontWeight: FontWeight.w300,
                   fontSize: 16
               ),
             ),
              // SizedBox(height: 20,),

              Container(
                height: 60,width: 330,
                //color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('+88',style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        fontSize: 20
                      ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 260,
                        child: TextField(
                          controller: _mobileNumber,
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.red.shade900,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // prefixIcon: Icon(Icons.attach_money_rounded,size: 30,color: Colors.grey,),
                            hintText: '017XXXXXXXX',
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w500,
                               // fontSize: 20

                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),

              Divider(color: Colors.grey.shade300,),

              SizedBox(height: 30,),

              Row(
                children: [
                  Text('By proceeding you agree to our',
                    style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.grey.shade500),
                    textAlign: TextAlign.center,),
                  TextButton(
                      style: ButtonStyle(
                        shadowColor: MaterialStateProperty.all(Colors.transparent),
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: (){},
                      child: Text('Terms and Conditions'))
                ],
              ),


              SizedBox(height: 180,),

              Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Colors.red.shade900
                ),
                child: TextButton(
                  style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OTPsendPage();
                        },
                      ),
                    );

                  },
                  child: Row(
                    children: [
                      Text('Next',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 16)),
                      Spacer(),
                      Icon(Icons.arrow_forward,color: Colors.white,)
                    ],
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
