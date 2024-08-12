import '/flutter_flow/flutter_flow_util.dart';
import 'registeration01_widget.dart' show Registeration01Widget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registeration01Model extends FlutterFlowModel<Registeration01Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstNameARTextField widget.
  FocusNode? firstNameARTextFieldFocusNode;
  TextEditingController? firstNameARTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameARTextFieldTextControllerValidator;
  // State field(s) for FatherNameARTextField widget.
  FocusNode? fatherNameARTextFieldFocusNode;
  TextEditingController? fatherNameARTextFieldTextController;
  String? Function(BuildContext, String?)?
      fatherNameARTextFieldTextControllerValidator;
  // State field(s) for GrandFatherNameARTextField widget.
  FocusNode? grandFatherNameARTextFieldFocusNode;
  TextEditingController? grandFatherNameARTextFieldTextController;
  String? Function(BuildContext, String?)?
      grandFatherNameARTextFieldTextControllerValidator;
  // State field(s) for FamilyNameARTextField widget.
  FocusNode? familyNameARTextFieldFocusNode;
  TextEditingController? familyNameARTextFieldTextController;
  String? Function(BuildContext, String?)?
      familyNameARTextFieldTextControllerValidator;
  // State field(s) for FirstNameENTextField widget.
  FocusNode? firstNameENTextFieldFocusNode;
  TextEditingController? firstNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameENTextFieldTextControllerValidator;
  // State field(s) for FatherNameENTextField widget.
  FocusNode? fatherNameENTextFieldFocusNode;
  TextEditingController? fatherNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      fatherNameENTextFieldTextControllerValidator;
  // State field(s) for GrandFatherNameENTextField widget.
  FocusNode? grandFatherNameENTextFieldFocusNode;
  TextEditingController? grandFatherNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      grandFatherNameENTextFieldTextControllerValidator;
  // State field(s) for FamilyNameENTextField widget.
  FocusNode? familyNameENTextFieldFocusNode;
  TextEditingController? familyNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      familyNameENTextFieldTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

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
