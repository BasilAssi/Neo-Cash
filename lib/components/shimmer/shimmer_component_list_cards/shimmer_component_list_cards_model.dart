import '/flutter_flow/flutter_flow_util.dart';
import 'shimmer_component_list_cards_widget.dart'
    show ShimmerComponentListCardsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class ShimmerComponentListCardsModel
    extends FlutterFlowModel<ShimmerComponentListCardsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {}
}
