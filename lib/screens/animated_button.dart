/*------------------------------------ taskpage.dart使用時に書きたいAnimatedButton ---------------------------------
このまま使うと5行目のbuild, 12行目のchildでエラー
class ButtonArea extends State<TaskPage> {
    @override
    Widget build(BuildContext context){
      SingleChildScrollView(
        child: Container(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            //_addButton() //TODO: should i separate the animatedbutton method?
              child: AnimatedButton(
                required Widget child,
                animationDuration: const Duration(milliseconds: 1000),
                initialText: "Ive Done",
                finalText: "Add",
                iconData: Icons.check,
                iconSize: 32.0,
                buttonStyle: ButtonStyle(
                  //primaryColor: Colors.blue.shade600,
                  //secondaryColor: Colors.white,
                  elevation: 20.0,
                  initialTextStyle: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                  finalTextStyle: TextStyle(
                    fontSize: 24.0,
                    color: Colors.pink.shade600,
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}

---------------------------- animated_button.dartディレクトリ(AnimatedButtonを動かすためのもの) ------------------------------------
import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

class AnimatedButton extends StatefulWidget {

  final String initialText, finalText;
  final ButtonStyle buttonStyle;
  final IconData iconData;
  final double iconSize;
  final Duration animationDuration;

  AnimatedButton (
    {required this.initialText,
    required this.finalText,
    required this.buttonStyle,
    required this.iconData,
    required this.iconSize,
    required this.animationDuration}
  );// The parameter implicit default value is ‘null’. common fix: make the type nullable, put the value or required parameter.

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> with TickerProviderStateMixin { 
  AnimationController late _controller;
  //AnimationController Class これは needs TickerProvider + vsync argument on the コンストラクタ

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this);
  }//AnimationControllerと連携させたアニメーションがコールされる

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }//終了処理

  @override
  Widget build(BuildContext context){
    return Container(
      elevation: widget.buttonStyle.elevation,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        //child: Container(
          padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
          color: widget.buttonStyle.primaryColor, //THINK: primaryColorってtheme colorを返す？
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                widget.iconData, size: widget.iconSize, color: widget.buttonStyle.primaryColor,
              ),
              Text(
                widget.initialText, style: widget.buttonStyle.initialTextStyle,
              )
            ],
          ),
        //),
      ),
    );
  }
}

class ButtonStyle {
  final TextStyle initialTextStyle, finalTextStyle;
  final Color primaryColor, secondaryColor;
  final double elevation;

  ButtonStyle(
    {required this.initialTextStyle,
    required this.finalTextStyle,
    required this.primaryColor,
    required this.secondaryColor,
    required this.elevation}
  );
}

enum ButtonState{
  SHOW_ONLY_TEXT,
  SHOW_ONLY_ICON,
  SHOW_TEXT_ICON,
}
*/
