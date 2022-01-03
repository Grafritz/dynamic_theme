import 'package:flutter/material.dart';

import 'dynamic_colors.dart';
import 'dynamic_theme.dart';

class ColorThemeDialog extends StatefulWidget {
  const ColorThemeDialog({Key? key}) : super(key: key);

  @override
  _ColorThemeDialogState createState() => _ColorThemeDialogState();
}

class _ColorThemeDialogState extends State<ColorThemeDialog> {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: InkWell(
          onTap: ()=> Navigator.pop(context),
          child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8),
              child: Row(
                children: const <Widget>[
                  Padding( padding: EdgeInsets.only(right: 8),
                      child: Icon(Icons.color_lens) ),
                  Text( 'Colors' ),
                  Spacer(),
                  Icon(Icons.close )
                ],
              )
          ),
        ),
        titlePadding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0, bottom: 0),
        contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0, bottom: 0),
        content: Container(
          width: double.maxFinite,
          height: 300.0,
          child: ListView.builder(shrinkWrap: true,
              itemCount: DynamicColors.primaryColor.length,
              itemBuilder: (BuildContext context, int i){
                return ListTile(
                  leading: CircleAvatar( backgroundColor: DynamicColors.primaryColor[i], child: const Icon(Icons.format_paint_outlined, color: Colors.black,)),
                  title: Text('${DynamicColors.primaryColorStr[i].toString().toUpperCase()}',),
                  trailing: const Icon(Icons.color_lens),
                  onTap: () {
                    setState(() {
                     //final Color _primarySwatch = DynamicColors.primaryColor[i];
                      DynamicTheme.of(context)?.setThemeData( ThemeData(primarySwatch: DynamicColors.primaryColor[i], ));
                    });
                    Navigator.pop(context, DynamicColors.primaryColor[i]);
                  },
                );
              }
          ),
        )
    );
  }
}
