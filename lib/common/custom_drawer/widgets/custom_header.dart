import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      padding: const EdgeInsets.only(left: 40),
      color: Colors.blue,
      child: Row(
        children: [
          Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Acesse sua conta agora!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Clique aqui',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  overflow: TextOverflow.clip,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
