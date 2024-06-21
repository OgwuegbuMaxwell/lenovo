import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lenovo/pages/application/bloc/app_events.dart';
import 'package:lenovo/pages/application/bloc/app_states.dart';

class AppBlocs extends Bloc<AppEvent, AppStates> {
   AppBlocs() : super(const AppStates()) {

    on<TriggerAppEvent>((event, emit){
      emit(AppStates(index: event.index));
    });

   }
}