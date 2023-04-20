import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AddUserModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Text_Nombre widget.
  TextEditingController? textNombreController;
  String? Function(BuildContext, String?)? textNombreControllerValidator;
  // State field(s) for Text_Edad widget.
  TextEditingController? textEdadController1;
  String? Function(BuildContext, String?)? textEdadController1Validator;
  // State field(s) for Text_Edad widget.
  TextEditingController? textEdadController2;
  String? Function(BuildContext, String?)? textEdadController2Validator;
  // State field(s) for Text_Edad widget.
  TextEditingController? textEdadController3;
  String? Function(BuildContext, String?)? textEdadController3Validator;
  // State field(s) for Text_Fecha_de_Nac widget.
  TextEditingController? textFechaDeNacController;
  final textFechaDeNacMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textFechaDeNacControllerValidator;
  // State field(s) for Text_Email widget.
  TextEditingController? textEmailController;
  String? Function(BuildContext, String?)? textEmailControllerValidator;
  // State field(s) for Text_Edad widget.
  TextEditingController? textEdadController4;
  String? Function(BuildContext, String?)? textEdadController4Validator;
  // State field(s) for Text_Lugar_de_Nac widget.
  TextEditingController? textLugarDeNacController1;
  final textLugarDeNacMask1 = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? textLugarDeNacController1Validator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for Text_Num_de_Emer widget.
  TextEditingController? textNumDeEmerController;
  String? Function(BuildContext, String?)? textNumDeEmerControllerValidator;
  // State field(s) for Text_Edad widget.
  TextEditingController? textEdadController5;
  String? Function(BuildContext, String?)? textEdadController5Validator;
  // State field(s) for Text_Lugar_de_Nac widget.
  TextEditingController? textLugarDeNacController2;
  String? Function(BuildContext, String?)? textLugarDeNacController2Validator;
  // State field(s) for Text_Edad widget.
  TextEditingController? textEdadController6;
  String? Function(BuildContext, String?)? textEdadController6Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textNombreController?.dispose();
    textEdadController1?.dispose();
    textEdadController2?.dispose();
    textEdadController3?.dispose();
    textFechaDeNacController?.dispose();
    textEmailController?.dispose();
    textEdadController4?.dispose();
    textLugarDeNacController1?.dispose();
    textNumDeEmerController?.dispose();
    textEdadController5?.dispose();
    textLugarDeNacController2?.dispose();
    textEdadController6?.dispose();
  }

  /// Additional helper methods are added here.

}
