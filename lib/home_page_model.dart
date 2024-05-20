import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:rental_app/rental_home.dart';
import 'package:rental_app/serarch_bg.dart';

import 'bottom_nav.dart';


class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.


  final unfocusNode = FocusNode();
  // Model for search_bg component.
  late SearchBgModel searchBgModel;
  // Model for bottom_nav component.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    searchBgModel = createModel(context, () => SearchBgModel());
    bottomNavModel = createModel(context, () => BottomNavModel(true,false));
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBgModel.dispose();
    bottomNavModel.dispose();
  }
}
