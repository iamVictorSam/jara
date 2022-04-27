import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Customer/wallets/card/components/body.dart';
import 'package:jara/presentation/screens/Customer/wallets/card/components/card_design.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Card'),
        elevation: 0.5,
      ),
      body: CardBody(),
    );
  }
}
