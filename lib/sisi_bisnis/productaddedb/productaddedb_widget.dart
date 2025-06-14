import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_bisnis/bookedwill_copy/bookedwill_copy_widget.dart';
import 'package:flutter/material.dart';
import 'productaddedb_model.dart';
export 'productaddedb_model.dart';

class ProductaddedbWidget extends StatefulWidget {
  const ProductaddedbWidget({super.key});

  static String routeName = 'productaddedb';
  static String routePath = '/productaddedb';

  @override
  State<ProductaddedbWidget> createState() => _ProductaddedbWidgetState();
}

class _ProductaddedbWidgetState extends State<ProductaddedbWidget> {
  late ProductaddedbModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductaddedbModel());

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
                  model: _model.bookedwillCopyModel,
                  updateCallback: () => safeSetState(() {}),
                  child: BookedwillCopyWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
