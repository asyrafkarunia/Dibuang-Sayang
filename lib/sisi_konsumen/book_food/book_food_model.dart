import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_konsumen/component/bookedwill/bookedwill_widget.dart';
import 'book_food_widget.dart' show BookFoodWidget;
import 'package:flutter/material.dart';

class BookFoodModel extends FlutterFlowModel<BookFoodWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Bookedwill component.
  late BookedwillModel bookedwillModel;

  @override
  void initState(BuildContext context) {
    bookedwillModel = createModel(context, () => BookedwillModel());
  }

  @override
  void dispose() {
    bookedwillModel.dispose();
  }
}
