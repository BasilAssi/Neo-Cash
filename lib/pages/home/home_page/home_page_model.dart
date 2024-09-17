import '/components/home_page_customer_balances_component/home_page_customer_balances_component_widget.dart';
import '/components/home_page_list_cards_component/home_page_list_cards_component_widget.dart';
import '/components/home_page_list_transaction_component/home_page_list_transaction_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for home_page_customer_balances_component component.
  late HomePageCustomerBalancesComponentModel
      homePageCustomerBalancesComponentModel;
  // Model for home_page_list_cards_component component.
  late HomePageListCardsComponentModel homePageListCardsComponentModel;
  // Model for home_page_list_transaction_component component.
  late HomePageListTransactionComponentModel
      homePageListTransactionComponentModel;

  @override
  void initState(BuildContext context) {
    homePageCustomerBalancesComponentModel =
        createModel(context, () => HomePageCustomerBalancesComponentModel());
    homePageListCardsComponentModel =
        createModel(context, () => HomePageListCardsComponentModel());
    homePageListTransactionComponentModel =
        createModel(context, () => HomePageListTransactionComponentModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    homePageCustomerBalancesComponentModel.dispose();
    homePageListCardsComponentModel.dispose();
    homePageListTransactionComponentModel.dispose();
  }
}
