import '/components/home_page_list_transaction_component/home_page_list_transaction_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Model for home_page_list_transaction_component component.
  late HomePageListTransactionComponentModel
      homePageListTransactionComponentModel;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
    homePageListTransactionComponentModel =
        createModel(context, () => HomePageListTransactionComponentModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    homePageListTransactionComponentModel.dispose();
  }
}
