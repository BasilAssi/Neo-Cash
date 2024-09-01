import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
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
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: custom_widgets.DateRangePicker(
          width: double.infinity,
          height: double.infinity,
          initialEndDate: getCurrentTimestamp,
          initialStartDate: functions.getFirstOfMonth(),
          onDateRangePicked: (startDateSelected, endDateSelected) async {},
        ),
      ),
    );
  }
}
