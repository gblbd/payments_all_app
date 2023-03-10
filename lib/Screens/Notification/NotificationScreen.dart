import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_layout.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Color(0xFFFFF8F8),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xFFFFF8F8),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(

                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context,int index){

                  return InkWell(
                    onTap: triggerNotification,
                    child: Container(

                      decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          border: Border.all(
                            color: Colors.red.shade100,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),


                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10),vertical: AppLayout.getHeight(10)),
                      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(5),vertical: AppLayout.getHeight(10)),


                     // margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10),vertical: AppLayout.getHeight(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Notification Title",
                            style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),

                          Text("Notificaton Description",

                              style: GoogleFonts.openSans(
                              fontSize: 15,
                              fontWeight: FontWeight.normal
                          ),

                          ),

                        ],
                      ),
                    ),
                  );

                }

            )
          ],
        ),
      ),



    );
  }





  triggerNotification()
  {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 10,
            channelKey: 'basic_channel',
            title: 'Simple Notification',
            body: 'this is notification body'
        )
    );
  }




  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed){

      if(!isAllowed)
      {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }

    });
    super.initState();
  }
}
