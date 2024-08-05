import 'dart:developer';

import 'package:bloc/bloc.dart';

class SimpleBlocsObserver extends BlocObserver{

  //this will display the bloc status in the log

  @override
  void onCreate(BlocBase bloc){
    super.onCreate(bloc);
    log("onCreate -- bloc");
  }

  @override
  void onEvent(Bloc bloc, Object? event){
    super.onEvent(bloc, event);
    log("onEvent -- bloc: ${bloc.runtimeType}, event: ${event}");
  }

  @override
  void onChange(BlocBase bloc, Change change){
    super.onChange(bloc, change);
    log("onChange -- bloc: ${bloc.runtimeType}, change: ${change}");
  }

  @override
  void onTransition(Bloc bloc, Transition transition){
    super.onTransition(bloc, transition);
    log("onTransition -- bloc: ${bloc.runtimeType}, transition: ${transition}");
  }

  @override
  void onClose(BlocBase bloc){
    super.onClose(bloc);
    log("onClose -- bloc: ${bloc.runtimeType}");
  }


}