import 'package:epm/Mainwidget/Flashscreen/Loginsignup/Widgets/defaultappbar.dart';
import 'package:epm/screens/masterpasswordscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Createaccountscreen extends StatefulWidget {
  const Createaccountscreen({super.key});

  @override
  State<Createaccountscreen> createState() => _CreateaccountscreenState();
}

class _CreateaccountscreenState extends State<Createaccountscreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Defaultappbar(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lets start with your email...',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'We dont need much to get the ball rolling ',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 60,
            ),
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Masterpasswordscreen(),
                        ),
                      );
                    },
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(fontSize: 17),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
