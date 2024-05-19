import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class FFAppState extends ChangeNotifier {
  int status = 0;
  double _width = 0.0;

  double get width => _width;

  void setWidth(double newWidth) {
    _width = newWidth;
    notifyListeners();
  }


  void setStatus(int newStatus) {
    status = newStatus;
    notifyListeners();
  }
}




class HomeBottomSheetWidget extends StatefulWidget {
  const HomeBottomSheetWidget({super.key});

  @override
  State<HomeBottomSheetWidget> createState() => _HomeBottomSheetWidgetState();
}

class _HomeBottomSheetWidgetState extends State<HomeBottomSheetWidget>
    with TickerProviderStateMixin {
  late HomeBottomSheetModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    print("Setteingtstae");

    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeBottomSheetModel());

    final appState = Provider.of<FFAppState>(context, listen: false);
    Future.delayed(Duration(milliseconds: 100), () {
      appState.setWidth(150.0);
    });

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.ms,
            begin: Offset(-145.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.ms,
            begin: Offset(-145.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.ms,
            begin: Offset(-170.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.ms,
            begin: Offset(-140.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.ms,
            begin: Offset(-140.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.ms,
            begin: Offset(-140.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    final appState = Provider.of<FFAppState>(context, listen: false);

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        Navigator.pop(context);
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(6),
              child: Container(
                width: 371,
                height: 513,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8),
                  shape: BoxShape.rectangle,
                ),
                child: MasonryGridView.builder(
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return [
                          () => Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Container(
                          height: 400,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/home_five.png',
                                  width: 592,
                                  height: 400,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 1),

                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 20),
                                  child: AnimatedContainer(
                                    child: Center(child: Text("1 Room and palor",style: GoogleFonts.mulish(color: Colors.black,fontSize: 10),)),
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeInOut,
                                    width: valueOrDefault<double>(
                                       appState.width,
                                      0.0,
                                    ),
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 20,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .alternate,
                                    icon: Icon(
                                      Icons.navigate_next,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24,
                                    ),
                                    onPressed: () async {
                                      setState(() {

                                      });
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation1']!),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                          () => Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/home_five.png',
                                  width: 592,
                                  height: 400,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 20),
                                  child: AnimatedContainer(
                                    child: Center(child: Text("5 Room and palor",style: GoogleFonts.mulish(color: Colors.black,fontSize: 10),)),

                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeInOut,
                                    width: valueOrDefault<double>(
                                       appState.width,
                                      0.0,
                                    ),
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .alternate,
                                    icon: Icon(
                                      Icons.navigate_next,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation2']!),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                          () => Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/home_five.png',
                                  width: 592,
                                  height: 400,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 20),
                                  child: AnimatedContainer(
                                    child: Center(child: Text("2 Rooms and palor",style: GoogleFonts.mulish(color: Colors.black,fontSize: 10),)),
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeInOut,
                                    width: valueOrDefault<double>(
                                       appState.width,
                                      0.0,
                                    ),
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .alternate,
                                    icon: Icon(
                                      Icons.navigate_next,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation3']!),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                          () => Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/home_five.png',
                                  width: 592,
                                  height: 400,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 20),
                                  child: AnimatedContainer(
                                    child: Center(child: Text("3 Room and palor",style: GoogleFonts.mulish(color: Colors.black,fontSize: 10),)),

                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeInOut,
                                    width: valueOrDefault<double>(
                                       appState.width,
                                      0.0,
                                    ),
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .alternate,
                                    icon: Icon(
                                      Icons.navigate_next,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation4']!),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                          () => Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/home_five.png',
                                  width: 592,
                                  height: 400,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 20),
                                  child: AnimatedContainer(
                                    child: Center(child: Text("4 Rooms and palor",style: GoogleFonts.mulish(color: Colors.black,fontSize: 10),)),
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeInOut,
                                    width: valueOrDefault<double>(
                                       appState.width,
                                      0.0,
                                    ),
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .alternate,
                                    icon: Icon(
                                      Icons.navigate_next,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation5']!),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ][index]();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class HomeBottomSheetModel extends FlutterFlowModel<HomeBottomSheetWidget> {
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}


