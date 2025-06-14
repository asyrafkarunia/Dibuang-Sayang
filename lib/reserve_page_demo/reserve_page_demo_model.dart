import '/components/product_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reserve_page_demo_widget.dart' show ReservePageDemoWidget;
import 'package:flutter/material.dart';

class ReservePageDemoModel extends FlutterFlowModel<ReservePageDemoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProductCard component.
  late ProductCardModel productCardModel;

  @override
  void initState(BuildContext context) {
    productCardModel = createModel(context, () => ProductCardModel());
  }

  @override
  void dispose() {
    productCardModel.dispose();
  }
}
