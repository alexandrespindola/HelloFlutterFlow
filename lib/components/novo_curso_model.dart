import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'novo_curso_widget.dart' show NovoCursoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class NovoCursoModel extends FlutterFlowModel<NovoCursoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for novoCursoNome widget.
  FocusNode? novoCursoNomeFocusNode;
  TextEditingController? novoCursoNomeController;
  String? Function(BuildContext, String?)? novoCursoNomeControllerValidator;
  // State field(s) for novoDescCurso widget.
  FocusNode? novoDescCursoFocusNode;
  TextEditingController? novoDescCursoController;
  String? Function(BuildContext, String?)? novoDescCursoControllerValidator;
  // State field(s) for novoDescCursoLongo widget.
  FocusNode? novoDescCursoLongoFocusNode;
  TextEditingController? novoDescCursoLongoController;
  String? Function(BuildContext, String?)?
      novoDescCursoLongoControllerValidator;
  // State field(s) for novoUrlCapa widget.
  FocusNode? novoUrlCapaFocusNode;
  TextEditingController? novoUrlCapaController;
  String? Function(BuildContext, String?)? novoUrlCapaControllerValidator;
  // State field(s) for novoUrlVideo widget.
  FocusNode? novoUrlVideoFocusNode;
  TextEditingController? novoUrlVideoController;
  String? Function(BuildContext, String?)? novoUrlVideoControllerValidator;
  // State field(s) for novaNota widget.
  int? novaNotaValue;
  FormFieldController<int>? novaNotaValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    novoCursoNomeFocusNode?.dispose();
    novoCursoNomeController?.dispose();

    novoDescCursoFocusNode?.dispose();
    novoDescCursoController?.dispose();

    novoDescCursoLongoFocusNode?.dispose();
    novoDescCursoLongoController?.dispose();

    novoUrlCapaFocusNode?.dispose();
    novoUrlCapaController?.dispose();

    novoUrlVideoFocusNode?.dispose();
    novoUrlVideoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
