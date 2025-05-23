import 'package:flutter/material.dart';

import 'package:bondly/providers/theme_provider.dart';

class PlansCard extends StatelessWidget {
  final ThemeProvider themeProvider;
  final int index;

  const PlansCard (
    {
      super.key,
      required this.themeProvider,
      required this.index,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,                   
      height: 180,
      width: 140,         
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: themeProvider.currentBaseColor,
        border: Border.all(
          color: index == 0 ? themeProvider.currentThemeColor : defaultGrey, 
          width: index == 0 ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
          )
        ]
      ),               
      child: Text("PLACEHOLDER", style: TextStyle(color: themeProvider.currentTextColor),), 
    );
  }  
}