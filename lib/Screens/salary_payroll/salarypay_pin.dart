



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payments_all_app/Screens/salary_payroll/salary_confirmation.dart';

import '../../utils/app_layout.dart';

class SalaryPayPin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 30,),
            SafeArea(
              child: Row(
                children: [
                  TextButton(
                      onPressed: (){



                      },
                      child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  Text('Salary Payroll',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),)
                ],
              ),
            ),

            SizedBox(height: 40,),

            Container(
              decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(10)
              ),
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Total Amount : "),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(" ৳ 100000",
                        style: GoogleFonts.openSans(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade900
                        ),
                      ),


                      // InkWell(
                      //   onTap: (){
                      //
                      //
                      //
                      //   },
                      //   child: Icon(
                      //     Icons.arrow_forward_ios,
                      //     size: 40,
                      //   ),
                      // )



                    ],
                  ),

                  Row(
                    children: [
                      Text("Aveilable Balance : ",
                        style: GoogleFonts.openSans(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      Text("100.00",

                        style: GoogleFonts.openSans(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,

                        ),

                      ),
                      Text(" ৳",

                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),

                      ),

                      //Icon(Icons.currency_lira)



                    ],
                  ),





                  Container(
                    margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10),vertical: AppLayout.getHeight(20)),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10),vertical: AppLayout.getHeight(20)),
                    decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),

                    child: Column(
                      children: [
                        Table(
                          children: [
                            TableRow( children: [
                              Column(children:[Text('Total\nAmount\n', style: GoogleFonts.openSans(fontSize: 20.0))]),
                              Column(children:[Text('Charge\n', style: GoogleFonts.openSans(fontSize: 20.0))]),
                              Column(children:[Text('Total\n', style: GoogleFonts.openSans(fontSize: 20.0))]),
                            ]),
                            TableRow( children: [
                              Column(children:[Text('৳ 100000', style: TextStyle(fontSize: 20.0))]),
                              Column(children:[Text('+৳ 0.00', style: TextStyle(fontSize: 20.0))]),
                              Column(children:[Text('৳ 100000', style: TextStyle(fontSize: 20.0))]),
                            ]),

                          ],
                        ),

                        SizedBox(height: AppLayout.getHeight(25),),


                        Container(
                          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
                          child: Row(
                            children: [
                              Text("PIN : ",
                                style: GoogleFonts.openSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50,width: 296,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Color(0xFFFCDEDE),),
                                borderRadius: BorderRadius.circular(6.0),
                                color: Colors.white
                            ),



                            child: TextField(
                              //controller: _mobileNo,
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.red.shade900,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock,size: 30,color: Colors.red.shade900,),
                                hintText: 'Enter PIN',
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                suffixIcon: InkWell(
                                    onTap:() {


                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return SalaryConfirmation();
                                          },
                                        ),
                                      );

                                    },
                                    child: Icon(Icons.arrow_forward,size: 30,color: Colors.red.shade900,)),
                                suffixIconColor: Color(0xFFFCDEDE),
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

          ],
        ),
      ),
    );
  }

}