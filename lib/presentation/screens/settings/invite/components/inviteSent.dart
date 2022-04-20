import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/screens/homePage/homePage.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:get/get.dart';

class InviteSent extends StatefulWidget {
  const InviteSent({Key? key}) : super(key: key);

  @override
  _InviteSentState createState() => _InviteSentState();
}

class _InviteSentState extends State<InviteSent> {
  @override
  Widget build(BuildContext context) {
    // showDialog(context: context)
    return AlertDialog(
      backgroundColor: kWhite,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/invite.svg'),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(),
          const Text(
            'Invite Sent!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Divider(),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding),
              child: const Text(
                'Thank you for spreading the word about Jara. Find more things to do by clicking on the button below.',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.normal,
                ),
              )),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: DefaultBtn(
              press: () => Get.to(() => HomePage()),
              text: 'Explore',
              color: kGreen,
            ),
          )
        ],
      ),
    );
  }
}
