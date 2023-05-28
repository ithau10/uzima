// ignore_for_file: depend_on_referenced_packages, duplicate_ignore

import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tab_bar_event.dart';
part 'tab_bar_state.dart';

class TabBarBloc extends Bloc<TabBarEvent, TabBarState> {
  TabBarBloc() : super(TabBarInitial());

  int currentIndex = 0;
  bool isSelected = false;

  @override
  Stream<TabBarState> mapEventToState(
    TabBarEvent event,
  ) async* {
    if (event is TabBarItemTappedEvent) {
      currentIndex = event.index;
      yield TabBarItemSelectedState(index: currentIndex);
    }
  }
}
