import '/flutter_flow/flutter_flow_util.dart';
import 'registeration01_widget.dart' show Registeration01Widget;
import 'package:flutter/material.dart';

class Registeration01Model extends FlutterFlowModel<Registeration01Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstNameARTextField widget.
  FocusNode? firstNameARTextFieldFocusNode;
  TextEditingController? firstNameARTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameARTextFieldTextControllerValidator;
  String? _firstNameARTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fg9qljcu' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        '4qyygkkl' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }
    if (!RegExp('^[\\u0621-\\u064A\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'q00zvrwj' /* الاسم يجب ان يكون باللغة العرب... */,
      );
    }
    return null;
  }

  // State field(s) for FatherNameARTextField widget.
  FocusNode? fatherNameARTextFieldFocusNode;
  TextEditingController? fatherNameARTextFieldTextController;
  String? Function(BuildContext, String?)?
      fatherNameARTextFieldTextControllerValidator;
  String? _fatherNameARTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'r8ss9mpo' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'unpl269b' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }
    if (!RegExp('^[\\u0621-\\u064A\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'a5kpo2rp' /* الاسم يجب ان يكون باللغة العرب... */,
      );
    }
    return null;
  }

  // State field(s) for GrandFatherNameARTextField widget.
  FocusNode? grandFatherNameARTextFieldFocusNode;
  TextEditingController? grandFatherNameARTextFieldTextController;
  String? Function(BuildContext, String?)?
      grandFatherNameARTextFieldTextControllerValidator;
  String? _grandFatherNameARTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'akl1d9zd' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'unpl269b' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }
    if (!RegExp('^[\\u0621-\\u064A\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'e62e5k8n' /* الاسم يجب ان يكون باللغة العرب... */,
      );
    }
    return null;
  }

  // State field(s) for FamilyNameARTextField widget.
  FocusNode? familyNameARTextFieldFocusNode;
  TextEditingController? familyNameARTextFieldTextController;
  String? Function(BuildContext, String?)?
      familyNameARTextFieldTextControllerValidator;
  String? _familyNameARTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tfwtgi9v' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        '28alnuln' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }
    if (!RegExp('^[\\u0621-\\u064A\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'e62e5k8n' /* الاسم يجب ان يكون باللغة العرب... */,
      );
    }
    return null;
  }

  // State field(s) for FirstNameENTextField widget.
  FocusNode? firstNameENTextFieldFocusNode;
  TextEditingController? firstNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameENTextFieldTextControllerValidator;
  String? _firstNameENTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'y7vkhixh' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'pjcomu85' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }
    if (!RegExp('^[A-Za-z\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '6e7r5kul' /* الاسم يجب ان يكون باللغة الانج... */,
      );
    }
    return null;
  }

  // State field(s) for FatherNameENTextField widget.
  FocusNode? fatherNameENTextFieldFocusNode;
  TextEditingController? fatherNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      fatherNameENTextFieldTextControllerValidator;
  String? _fatherNameENTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'xmu2qdk6' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'sh8ve8ex' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }
    if (!RegExp('^[A-Za-z\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '7go408ld' /* الاسم يجب ان يكون باللغة الانج... */,
      );
    }
    return null;
  }

  // State field(s) for GrandFatherNameENTextField widget.
  FocusNode? grandFatherNameENTextFieldFocusNode;
  TextEditingController? grandFatherNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      grandFatherNameENTextFieldTextControllerValidator;
  String? _grandFatherNameENTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't4qqigtg' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'vhf4dh58' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }
    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '6e7r5kul' /* الاسم يجب ان يكون باللغة الانج... */,
      );
    }
    return null;
  }

  // State field(s) for FamilyNameENTextField widget.
  FocusNode? familyNameENTextFieldFocusNode;
  TextEditingController? familyNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      familyNameENTextFieldTextControllerValidator;
  String? _familyNameENTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5hpn7ngb' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'agkzy9t0' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }
    if (!RegExp('^[A-Za-z\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'a7t0jgxg' /* الاسم يجب ان يكون باللغة الانج... */,
      );
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    firstNameARTextFieldTextControllerValidator =
        _firstNameARTextFieldTextControllerValidator;
    fatherNameARTextFieldTextControllerValidator =
        _fatherNameARTextFieldTextControllerValidator;
    grandFatherNameARTextFieldTextControllerValidator =
        _grandFatherNameARTextFieldTextControllerValidator;
    familyNameARTextFieldTextControllerValidator =
        _familyNameARTextFieldTextControllerValidator;
    firstNameENTextFieldTextControllerValidator =
        _firstNameENTextFieldTextControllerValidator;
    fatherNameENTextFieldTextControllerValidator =
        _fatherNameENTextFieldTextControllerValidator;
    grandFatherNameENTextFieldTextControllerValidator =
        _grandFatherNameENTextFieldTextControllerValidator;
    familyNameENTextFieldTextControllerValidator =
        _familyNameENTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    firstNameARTextFieldFocusNode?.dispose();
    firstNameARTextFieldTextController?.dispose();

    fatherNameARTextFieldFocusNode?.dispose();
    fatherNameARTextFieldTextController?.dispose();

    grandFatherNameARTextFieldFocusNode?.dispose();
    grandFatherNameARTextFieldTextController?.dispose();

    familyNameARTextFieldFocusNode?.dispose();
    familyNameARTextFieldTextController?.dispose();

    firstNameENTextFieldFocusNode?.dispose();
    firstNameENTextFieldTextController?.dispose();

    fatherNameENTextFieldFocusNode?.dispose();
    fatherNameENTextFieldTextController?.dispose();

    grandFatherNameENTextFieldFocusNode?.dispose();
    grandFatherNameENTextFieldTextController?.dispose();

    familyNameENTextFieldFocusNode?.dispose();
    familyNameENTextFieldTextController?.dispose();
  }
}
