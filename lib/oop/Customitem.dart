import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  CustomItem({super.key, required this.color});
  dynamic color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      width: double.infinity,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
              title: Text(
                'Flutter tips',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  'Build Your Career With Rania Atef ',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(.5)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: 20,
                    color: Colors.black,
                  ))),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              'May 12,2022',
              style: TextStyle(color: Colors.black.withOpacity(.5)),
            ),
          )
        ],
      ),
    );
  }
}
