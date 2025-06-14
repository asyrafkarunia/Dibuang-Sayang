import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_bisnis/sidenavdrawer/sidenavdrawer_widget.dart';
import '/index.dart';
import 'dashboard_business_widget.dart' show DashboardBusinessWidget;
import 'package:flutter/material.dart';

class DashboardBusinessModel extends FlutterFlowModel<DashboardBusinessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidenavdrawer component.
  late SidenavdrawerModel sidenavdrawerModel;
  var scanQR = '';

  @override
  void initState(BuildContext context) {
    sidenavdrawerModel = createModel(context, () => SidenavdrawerModel());
  }

  @override
  void dispose() {
    sidenavdrawerModel.dispose();
  }
}
