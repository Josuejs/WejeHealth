import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AddUserModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Text_Nombre widget.
  TextEditingController? textNombreController;
  String? Function(BuildContext, String?)? textNombreControllerValidator;
  // State field(s) for Text_Edad widget.
  TextEditingController? textEdadController;
  String? Function(BuildContext, String?)? textEdadControllerValidator;
  // State field(s) for Text_Lugar_de_Nac widget.
  TextEditingController? textLugarDeNacController;
  String? Function(BuildContext, String?)? textLugarDeNacControllerValidator;
  // State field(s) for Text_Num_Tel widget.
  TextEditingController? textNumTelController;
  String? Function(BuildContext, String?)? textNumTelControllerValidator;
  // State field(s) for Text_Direccion widget.
  TextEditingController? textDireccionController;
  String? Function(BuildContext, String?)? textDireccionControllerValidator;
  // State field(s) for Text_Fecha_de_Nac widget.
  TextEditingController? textFechaDeNacController;
  String? Function(BuildContext, String?)? textFechaDeNacControllerValidator;
  // State field(s) for Text_Email widget.
  TextEditingController? textEmailController;
  String? Function(BuildContext, String?)? textEmailControllerValidator;
  // State field(s) for Text_Num_de_Emer widget.
  TextEditingController? textNumDeEmerController;
  String? Function(BuildContext, String?)? textNumDeEmerControllerValidator;
  // State field(s) for Text_Cedula widget.
  TextEditingController? textCedulaController;
  String? Function(BuildContext, String?)? textCedulaControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textNombreController?.dispose();
    textEdadController?.dispose();
    textLugarDeNacController?.dispose();
    textNumTelController?.dispose();
    textDireccionController?.dispose();
    textFechaDeNacController?.dispose();
    textEmailController?.dispose();
    textNumDeEmerController?.dispose();
    textCedulaController?.dispose();
  }

  /// Additional helper methods are added here.

}
