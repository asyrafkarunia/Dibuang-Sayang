import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_konsumen/component/bookedwill/bookedwill_widget.dart';
import 'package:flutter/material.dart';
import 'book_food_model.dart';
export 'book_food_model.dart';

class BookFoodWidget extends StatefulWidget {
  const BookFoodWidget({super.key});

  static String routeName = 'BookFood';
  static String routePath = '/bookFood';

  @override
  State<BookFoodWidget> createState() => _BookFoodWidgetState();
}

class _BookFoodWidgetState extends State<BookFoodWidget> {
  late BookFoodModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookFoodModel());

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
          child: wrapWithModel(
            model: _model.bookedwillModel,
            updateCallback: () => safeSetState(() {}),
            child: BookedwillWidget(),
          ),
        ),
      ),
    );
  }
}
