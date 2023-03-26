import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'doctor_welcome_model.dart';
export 'doctor_welcome_model.dart';

class DoctorWelcomeWidget extends StatefulWidget {
  const DoctorWelcomeWidget({Key? key}) : super(key: key);

  @override
  _DoctorWelcomeWidgetState createState() => _DoctorWelcomeWidgetState();
}

class _DoctorWelcomeWidgetState extends State<DoctorWelcomeWidget> {
  late DoctorWelcomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DoctorWelcomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: FlutterFlowTheme.of(context).secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                  width: 36.0,
                  height: 36.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'd755wn9w' /* Hello,  */,
              ),
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: FlutterFlowTheme.of(context).title3Family,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    useGoogleFonts: GoogleFonts.asMap()
                        .containsKey(FlutterFlowTheme.of(context).title3Family),
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                '6vdrzx9x' /* Andrew */,
              ),
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: FlutterFlowTheme.of(context).title3Family,
                    color: FlutterFlowTheme.of(context).primaryText,
                    useGoogleFonts: GoogleFonts.asMap()
                        .containsKey(FlutterFlowTheme.of(context).title3Family),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
