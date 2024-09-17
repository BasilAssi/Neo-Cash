import '/components/home_page_customer_balances_component/home_page_customer_balances_component_widget.dart';
import '/components/home_page_list_cards_component/home_page_list_cards_component_widget.dart';
import '/components/home_page_list_transaction_component/home_page_list_transaction_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
