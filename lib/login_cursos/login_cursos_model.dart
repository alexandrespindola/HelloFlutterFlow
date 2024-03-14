import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_cursos_widget.dart' show LoginCursosWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginCursosModel extends FlutterFlowModel<LoginCursosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Login widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for password_Login widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;
  // State field(s) for emailAddressCADASTRO widget.
  FocusNode? emailAddressCADASTROFocusNode;
  TextEditingController? emailAddressCADASTROController;
  String? Function(BuildContext, String?)?
      emailAddressCADASTROControllerValidator;
  // State field(s) for passwordCADASTRO widget.
  FocusNode? passwordCADASTROFocusNode;
  TextEditingController? passwordCADASTROController;
  late bool passwordCADASTROVisibility;
  String? Function(BuildContext, String?)? passwordCADASTROControllerValidator;
  // State field(s) for passwordConfirmCADASTRO widget.
  FocusNode? passwordConfirmCADASTROFocusNode;
  TextEditingController? passwordConfirmCADASTROController;
  late bool passwordConfirmCADASTROVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmCADASTROControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordLoginVisibility = false;
    passwordCADASTROVisibility = false;
    passwordConfirmCADASTROVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginController?.dispose();

    emailAddressCADASTROFocusNode?.dispose();
    emailAddressCADASTROController?.dispose();

    passwordCADASTROFocusNode?.dispose();
    passwordCADASTROController?.dispose();

    passwordConfirmCADASTROFocusNode?.dispose();
    passwordConfirmCADASTROController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
