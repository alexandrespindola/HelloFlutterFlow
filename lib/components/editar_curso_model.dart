import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_curso_widget.dart' show EditarCursoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EditarCursoModel extends FlutterFlowModel<EditarCursoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nomeEditar widget.
  FocusNode? nomeEditarFocusNode;
  TextEditingController? nomeEditarController;
  String? Function(BuildContext, String?)? nomeEditarControllerValidator;
  // State field(s) for descCurtaEditar widget.
  FocusNode? descCurtaEditarFocusNode;
  TextEditingController? descCurtaEditarController;
  String? Function(BuildContext, String?)? descCurtaEditarControllerValidator;
  // State field(s) for descLongaEditar widget.
  FocusNode? descLongaEditarFocusNode;
  TextEditingController? descLongaEditarController;
  String? Function(BuildContext, String?)? descLongaEditarControllerValidator;
  // State field(s) for capaUrlEditar widget.
  FocusNode? capaUrlEditarFocusNode;
  TextEditingController? capaUrlEditarController;
  String? Function(BuildContext, String?)? capaUrlEditarControllerValidator;
  // State field(s) for videoUrlEditar widget.
  FocusNode? videoUrlEditarFocusNode;
  TextEditingController? videoUrlEditarController;
  String? Function(BuildContext, String?)? videoUrlEditarControllerValidator;
  // State field(s) for notaEditar widget.
  int? notaEditarValue;
  FormFieldController<int>? notaEditarValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeEditarFocusNode?.dispose();
    nomeEditarController?.dispose();

    descCurtaEditarFocusNode?.dispose();
    descCurtaEditarController?.dispose();

    descLongaEditarFocusNode?.dispose();
    descLongaEditarController?.dispose();

    capaUrlEditarFocusNode?.dispose();
    capaUrlEditarController?.dispose();

    videoUrlEditarFocusNode?.dispose();
    videoUrlEditarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
