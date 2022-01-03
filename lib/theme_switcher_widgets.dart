import 'package:flutter/material.dart';

import 'dynamic_colors.dart';
import 'dynamic_theme.dart';

class BrightnessSwitcherDialog extends StatelessWidget {
  const BrightnessSwitcherDialog({Key? key, required this.onSelectedTheme,
    this.activeToggleMode=true,
    this.activeColor=false,
    this.textTitle='Select Theme',
    this.textDarkMode='Dark Mode',
    this.textLightMode='Light Mode'
  }) : super(key: key);

  final ValueChanged<Brightness> onSelectedTheme;
  final String textTitle;
  final String textDarkMode;
  final String textLightMode;
  final bool activeColor;
  final bool activeToggleMode;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(textTitle),
      children: <Widget>[
        Visibility(
          visible: activeToggleMode,
          child: RadioListTile<Brightness>(
            value: Brightness.light,
            groupValue: Theme.of(context).brightness,
            onChanged: (Brightness? value) {
              onSelectedTheme(Brightness.light);
            },
            title: const Text('Light'),
          ),
        ),
        Visibility(
          visible: activeToggleMode,
          child: RadioListTile<Brightness>(
            value: Brightness.dark,
            groupValue: Theme.of(context).brightness,
            onChanged: (Brightness? value) {
              onSelectedTheme(Brightness.dark);
            },
            title: const Text('Spooky  👻'),
          ),
        ),
        Visibility( visible: activeColor, child: const Divider(), ),
        Visibility(
            visible: activeColor,
            child: Container(
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
                        // var _primarySwatch = DynamicColors.primaryColor[i];
                        DynamicTheme.of(context)?.setThemeData( ThemeData(primarySwatch: DynamicColors.primaryColor[i], ));
                        Navigator.pop(context, DynamicColors.primaryColor[i]);
                      },
                    );
                  }
              ),
            )
        ),
      ],
    );
  }
}
