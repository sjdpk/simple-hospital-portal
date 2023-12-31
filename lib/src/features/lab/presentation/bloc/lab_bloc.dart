import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entity/lab_result_entity.dart';

part 'lab_state.dart';
part 'lab_event.dart';

class LabFormBloc extends Bloc<SubmitFormEvent, LabFormState> {
  LabFormBloc() : super(const LabFormInitialState()) {
    on<LabFormSumbitDataEvent>(onLabFormSumbitDataEvent);
  }

  FutureOr<void> onLabFormSumbitDataEvent(LabFormSumbitDataEvent event, Emitter<LabFormState> emit) async {
    emit(const LabFormSubmittingState());
    await Future.delayed(
      const Duration(seconds: 1),
      () => emit(LabFormSucessState(labTestRecordEntity: event.labTestRecordEntity)),
    );
  }
}
