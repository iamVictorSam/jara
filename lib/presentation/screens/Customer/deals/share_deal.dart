import 'package:flutter/material.dart';

class ShareDeal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

              border: const Border(
                bottom: BorderSide(width: 1, color: Colors.black),
                top:  BorderSide(width: 1, color: Colors.black),
                right: BorderSide(width: 1, color: Colors.black),
                left: BorderSide(width: 1, color: Colors.black),
              ),
            ),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                const Text(
                  'Share Deal',
                  style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Share this deal with\nloved ones using the\noptions below',
                  style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){}, icon: Image.asset('images/copy icon.png'), iconSize: 70,),
                      IconButton(onPressed: (){}, icon: Image.asset('images/whatsapp.png'), iconSize: 70,),
                      IconButton(onPressed: (){}, icon: Image.asset('images/instagram.png'), iconSize: 70,),

                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
