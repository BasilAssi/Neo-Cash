import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_customer_balances_component_model.dart';
export 'home_page_customer_balances_component_model.dart';

class HomePageCustomerBalancesComponentWidget extends StatefulWidget {
  const HomePageCustomerBalancesComponentWidget({super.key});

  @override
  State<HomePageCustomerBalancesComponentWidget> createState() =>
      _HomePageCustomerBalancesComponentWidgetState();
}

class _HomePageCustomerBalancesComponentWidgetState
    extends State<HomePageCustomerBalancesComponentWidget> {
  late HomePageCustomerBalancesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => HomePageCustomerBalancesComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: CardGroup.getCustomerBalancesCall.call(
        idNumber: FFAppState().AuthenticatedUser.idNumber,
        msgId: functions.messageId(),
        acceptLanguage: FFLocalizations.of(context).getVariableText(
          arText: 'AR',
          enText: 'EN',
        ),
        token: FFAppState().AuthenticatedUser.accessToken,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40.0,
              height: 40.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final listViewGetCustomerBalancesResponse = snapshot.data!;

        return Builder(
          builder: (context) {
            final listBalances = ListCustomerBalancesStruct.maybeFromMap(
                        listViewGetCustomerBalancesResponse.jsonBody)
                    ?.records
                    ?.toList() ??
                [];

            return ListView.separated(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: listBalances.length,
              separatorBuilder: (_, __) => SizedBox(width: 30.0),
              itemBuilder: (context, listBalancesIndex) {
                final listBalancesItem = listBalances[listBalancesIndex];
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Text(
                    '${listBalancesItem.hasAvailableBalance() ? listBalancesItem.availableBalance.toString() : ' '}  ${listBalancesItem.hasCurrencyCode() ? listBalancesItem.currencyCode : '  '}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).textColor,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
