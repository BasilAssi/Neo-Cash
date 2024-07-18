import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'mf8pyss4' /* اليوم */,
                ),
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineSmallFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineSmallFamily),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 8.0),
              child: Text(
                dateTimeFormat(
                  'yMMMd',
                  getCurrentTimestamp,
                  locale: FFLocalizations.of(context).languageCode,
                ),
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).labelMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).labelMediumFamily),
                    ),
              ),
            ),
            Theme(
              data: ThemeData(
                checkboxTheme: const CheckboxThemeData(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                unselectedWidgetColor:
                    FlutterFlowTheme.of(context).secondaryText,
              ),
              child: CheckboxListTile(
                value: _model.checkboxListTileValue1 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.checkboxListTileValue1 = newValue!);
                },
                title: Text(
                  FFLocalizations.of(context).getText(
                    '5uyic31x' /* Title */,
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleLargeFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleLargeFamily),
                      ),
                ),
                subtitle: Text(
                  FFLocalizations.of(context).getText(
                    '9s4i8fjp' /* Subtitle goes here... */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelMediumFamily),
                      ),
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                activeColor: FlutterFlowTheme.of(context).primary,
                checkColor: FlutterFlowTheme.of(context).info,
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ),
            Theme(
              data: ThemeData(
                checkboxTheme: const CheckboxThemeData(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                unselectedWidgetColor:
                    FlutterFlowTheme.of(context).secondaryText,
              ),
              child: CheckboxListTile(
                value: _model.checkboxListTileValue2 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.checkboxListTileValue2 = newValue!);
                },
                title: Text(
                  FFLocalizations.of(context).getText(
                    'rv63u0ga' /* Title */,
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleLargeFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleLargeFamily),
                      ),
                ),
                subtitle: Text(
                  FFLocalizations.of(context).getText(
                    'w4eee20q' /* Subtitle goes here... */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelMediumFamily),
                      ),
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                activeColor: FlutterFlowTheme.of(context).primary,
                checkColor: FlutterFlowTheme.of(context).info,
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ),
            Theme(
              data: ThemeData(
                checkboxTheme: const CheckboxThemeData(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                unselectedWidgetColor:
                    FlutterFlowTheme.of(context).secondaryText,
              ),
              child: CheckboxListTile(
                value: _model.checkboxListTileValue3 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.checkboxListTileValue3 = newValue!);
                },
                title: Text(
                  _model.radioButtonValue!,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleLargeFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleLargeFamily),
                      ),
                ),
                subtitle: Text(
                  FFLocalizations.of(context).getText(
                    '1dkldbcz' /* Subtitle goes here... */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelMediumFamily),
                      ),
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                activeColor: FlutterFlowTheme.of(context).primary,
                checkColor: FlutterFlowTheme.of(context).info,
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ),
            FlutterFlowRadioButton(
              options: [
                FFLocalizations.of(context).getText(
                  'fwyejthf' /* Option 1 */,
                ),
                FFLocalizations.of(context).getText(
                  'fwyejthf' /* Option 1 */,
                ),
                FFLocalizations.of(context).getText(
                  'bv4wif3y' /* Option 1 */,
                )
              ].toList(),
              onChanged: (val) => setState(() {}),
              controller: _model.radioButtonValueController ??=
                  FormFieldController<String>(null),
              optionHeight: 32.0,
              textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelMediumFamily),
                  ),
              selectedTextStyle: FlutterFlowTheme.of(context)
                  .bodyMedium
                  .override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
              buttonPosition: RadioButtonPosition.left,
              direction: Axis.vertical,
              radioButtonColor: FlutterFlowTheme.of(context).primary,
              inactiveRadioButtonColor:
                  FlutterFlowTheme.of(context).secondaryText,
              toggleable: false,
              horizontalAlignment: WrapAlignment.start,
              verticalAlignment: WrapCrossAlignment.start,
            ),
            FlutterFlowChoiceChips(
              options: [
                ChipData(
                    FFLocalizations.of(context).getText(
                      'saa7276b' /* Option 1 */,
                    ),
                    Icons.train_outlined),
                const ChipData('')
              ],
              onChanged: (val) =>
                  setState(() => _model.choiceChipsValue = val?.firstOrNull),
              selectedChipStyle: ChipStyle(
                backgroundColor: FlutterFlowTheme.of(context).secondary,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                iconColor: FlutterFlowTheme.of(context).primaryText,
                iconSize: 18.0,
                elevation: 4.0,
                borderRadius: BorderRadius.circular(16.0),
              ),
              unselectedChipStyle: ChipStyle(
                backgroundColor: FlutterFlowTheme.of(context).alternate,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                iconColor: FlutterFlowTheme.of(context).secondaryText,
                iconSize: 18.0,
                elevation: 0.0,
                borderRadius: BorderRadius.circular(16.0),
              ),
              chipSpacing: 12.0,
              rowSpacing: 12.0,
              multiselect: false,
              alignment: WrapAlignment.start,
              controller: _model.choiceChipsValueController ??=
                  FormFieldController<List<String>>(
                [],
              ),
              wrapped: true,
            ),
          ],
        ),
      ),
    );
  }
}
