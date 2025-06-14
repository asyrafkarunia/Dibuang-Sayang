import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_bisnis/register_animation/register_animation_widget.dart';
import 'register_business_page_widget.dart' show RegisterBusinessPageWidget;
import 'package:flutter/material.dart';

class RegisterBusinessPageModel
    extends FlutterFlowModel<RegisterBusinessPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for RegisterAnimation component.
  late RegisterAnimationModel registerAnimationModel;

  @override
  void initState(BuildContext context) {
    registerAnimationModel =
        createModel(context, () => RegisterAnimationModel());
  }

  @override
  void dispose() {
    registerAnimationModel.dispose();
  }
}
