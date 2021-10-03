import 'package:flutter/material.dart';

class FlutterCheckboxDialog {
  Future<void> showCheckboxDialog(
    BuildContext context,
    bool checkboxValue,
    Widget checkboxTileTitle,
    void Function(bool) onChanged, {
    Key? key,
    Widget? title,
    EdgeInsetsGeometry? titlePadding,
    TextStyle? titleTextStyle,
    Widget? content,
    EdgeInsetsGeometry contentPadding =
        const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
    TextStyle? contentTextStyle,
    List<Widget>? actions,
    EdgeInsetsGeometry actionsPadding = EdgeInsets.zero,
    MainAxisAlignment? actionsAlignment,
    VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    EdgeInsetsGeometry? buttonPadding,
    Color? backgroundColor,
    double? elevation,
    String? semanticLabel,
    EdgeInsets insetPadding =
        const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
    Clip clipBehavior = Clip.none,
    ShapeBorder? shape,
    bool scrollable = false,
  }) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return _AlertDialog(
          checkboxValue,
          checkboxTileTitle,
          onChanged,
          key,
          title,
          titlePadding,
          titleTextStyle,
          content,
          contentPadding,
          contentTextStyle,
          actions,
          actionsPadding,
          actionsAlignment,
          actionsOverflowDirection,
          actionsOverflowButtonSpacing,
          buttonPadding,
          backgroundColor,
          elevation,
          semanticLabel,
          insetPadding,
          clipBehavior,
          shape,
          scrollable,
        );
      },
    );
  }
}

class _AlertDialog extends StatefulWidget {
  bool checkboxValue;
  Widget checkboxTileTitle;
  void Function(bool) onChanged;
  final Key? key;
  final Widget? title;
  final EdgeInsetsGeometry? titlePadding;
  final TextStyle? titleTextStyle;
  final Widget? content;
  final EdgeInsetsGeometry contentPadding;
  final TextStyle? contentTextStyle;
  final List<Widget>? actions;
  final EdgeInsetsGeometry actionsPadding;
  final MainAxisAlignment? actionsAlignment;
  final VerticalDirection? actionsOverflowDirection;
  final double? actionsOverflowButtonSpacing;
  final EdgeInsetsGeometry? buttonPadding;
  final Color? backgroundColor;
  final double? elevation;
  final String? semanticLabel;
  final EdgeInsets insetPadding;
  final Clip clipBehavior;
  final ShapeBorder? shape;
  final bool scrollable;
  _AlertDialog(
    this.checkboxValue,
    this.checkboxTileTitle,
    this.onChanged,
    this.key,
    this.title,
    this.titlePadding,
    this.titleTextStyle,
    this.content,
    this.contentPadding,
    this.contentTextStyle,
    this.actions,
    this.actionsPadding,
    this.actionsAlignment,
    this.actionsOverflowDirection,
    this.actionsOverflowButtonSpacing,
    this.buttonPadding,
    this.backgroundColor,
    this.elevation,
    this.semanticLabel,
    this.insetPadding,
    this.clipBehavior,
    this.shape,
    this.scrollable,
  );

  @override
  _AlertDialogState createState() => _AlertDialogState();
}

class _AlertDialogState extends State<_AlertDialog> {
  bool? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.checkboxValue;
  }

  @override
  Widget build(BuildContext context) {
    final _checkboxListTile = CheckboxListTile(
      value: _value,
      onChanged: (value) {
        setState(() {
          _value = value;
        });
        widget.onChanged(value!);
      },
      title: widget.checkboxTileTitle,
      controlAffinity: ListTileControlAffinity.leading,
    );

    Widget _content;
    if (widget.content == null) {
      _content = _checkboxListTile;
    } else {
      _content = Row(
        children: [
          widget.content!,
          _checkboxListTile,
        ],
      );
    }

    return AlertDialog(
      key: widget.key,
      title: widget.title,
      titlePadding: widget.titlePadding,
      titleTextStyle: widget.titleTextStyle,
      content: _content,
      contentPadding: widget.contentPadding,
      contentTextStyle: widget.contentTextStyle,
      actions: widget.actions,
      actionsPadding: widget.actionsPadding,
      actionsAlignment: widget.actionsAlignment,
      actionsOverflowDirection: widget.actionsOverflowDirection,
      actionsOverflowButtonSpacing: widget.actionsOverflowButtonSpacing,
      buttonPadding: widget.buttonPadding,
      backgroundColor: widget.backgroundColor,
      elevation: widget.elevation,
      semanticLabel: widget.semanticLabel,
      insetPadding: widget.insetPadding,
      clipBehavior: widget.clipBehavior,
      shape: widget.shape,
      scrollable: widget.scrollable,
    );
  }
}
