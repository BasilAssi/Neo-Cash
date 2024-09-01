import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'filter_transactions_component_model.dart';
export 'filter_transactions_component_model.dart';

class FilterTransactionsComponentWidget extends StatefulWidget {
  const FilterTransactionsComponentWidget({super.key});

  @override
  State<FilterTransactionsComponentWidget> createState() =>
      _FilterTransactionsComponentWidgetState();
}

class _FilterTransactionsComponentWidgetState
    extends State<FilterTransactionsComponentWidget> {
  late FilterTransactionsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterTransactionsComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
