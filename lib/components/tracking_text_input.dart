import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'input_helper.dart';

typedef void CaretMoved(Offset globalCaretPosition);
typedef void TextChanged(String text);

// Helper widget to track caret position.
class TrackingTextInput extends StatefulWidget {
  TrackingTextInput(
      {Key key,
        this.borderColor,
        this.suffixIcon,
        this.icoon,
        this.onCaretMoved,
        this.onTextChanged,
        this.hint,
        this.label,
        this.hintColor,
        this.labelColor,
        this.labelSize,

        this.isObscured = false})
      : super(key: key);
  final CaretMoved onCaretMoved;
  final TextChanged onTextChanged;
  final String hint;
  final String label;
  final bool isObscured;
  final Color hintColor;
  final Icon icoon;
  final Widget suffixIcon;
  final Color borderColor;
  final Color labelColor;
  final double labelSize;

  @override
  _TrackingTextInputState createState() => _TrackingTextInputState();
}

class _TrackingTextInputState extends State<TrackingTextInput> {
  final GlobalKey _fieldKey = GlobalKey();
  final TextEditingController _textController = TextEditingController();
  //final Color borderColor;
  Timer _debounceTimer;
 // _TrackingTextInputState({this.borderColor});
  @override
  initState() {
    _textController.addListener(() {
      // We debounce the listener as sometimes the caret position is updated after the listener
      // this assures us we get an accurate caret position.
      if (_debounceTimer?.isActive ?? false) _debounceTimer.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 100), () {
        if (_fieldKey.currentContext != null) {
          // Find the render editable in the field.
          final RenderObject fieldBox =
          _fieldKey.currentContext.findRenderObject();
          Offset caretPosition = getCaretPosition(fieldBox);

          if (widget.onCaretMoved != null) {
            widget.onCaretMoved(caretPosition);
          }
        }
      });
      if (widget.onTextChanged != null) {
        widget.onTextChanged(_textController.text);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, ),
      child: TextFormField(
        decoration: InputDecoration(

            enabledBorder: UnderlineInputBorder(

             borderSide: BorderSide(color: widget.borderColor ),
                //borderSide: BorderSide(color: Theme.of(context).dividerColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
            ),

            border:  new UnderlineInputBorder(
              borderSide: new BorderSide(
                  color: widget.borderColor,
              )
          ),



            contentPadding: const EdgeInsets.only(left: 30, bottom: 0),
            hintText: widget.hint,
            hintStyle: TextStyle(
              //locale:Locale.fromSubtags(),
              color: widget.hintColor,
              fontSize: 20,



            ),
            labelText: widget.label,
            labelStyle: TextStyle(
              color: widget.labelColor,
              fontSize: widget.labelSize,
            ),

          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(end: 12.0),
            child: widget.suffixIcon, // myIcon is a 48px-wide widget.
          )
          //suffixIcon: widget.suffixIcon,
        ),

        key: _fieldKey,
        controller: _textController,
        obscureText: widget.isObscured,

        //validator: (value) {}
      ),
    );
  }
}
