import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_bisnis/register_animation/register_animation_widget.dart';
import 'package:flutter/material.dart';
import 'register_business_page_model.dart';
export 'register_business_page_model.dart';

class RegisterBusinessPageWidget extends StatefulWidget {
  const RegisterBusinessPageWidget({super.key});

  static String routeName = 'registerBusinessPage';
  static String routePath = '/registerBusinessPage';

  @override
  State<RegisterBusinessPageWidget> createState() =>
      _RegisterBusinessPageWidgetState();
}

class _RegisterBusinessPageWidgetState
    extends State<RegisterBusinessPageWidget> {
  late RegisterBusinessPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterBusinessPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.registerAnimationModel,
                  updateCallback: () => safeSetState(() {}),
                  child: RegisterAnimationWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
