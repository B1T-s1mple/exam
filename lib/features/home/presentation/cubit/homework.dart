import 'package:exam/features/home/presentation/cubit/hw.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homework extends Cubit<Hw> {
  Homework()
    : super(
        Hw(
          switch_1: false,
          switch_2: true,
          switch_3: false,
          check_1: true,
          check_2: false,
          check_3: false,
          switch_booss: true,
          slider: 0,
          radio_a: 1,
          son: 0,
        ),
      );
  void switch_f() {
    emit(
      Hw(
        switch_1: !state.switch_1,
        switch_2: state.switch_2,
        switch_3: state.switch_3,
        check_1: state.check_1,
        check_2: state.check_2,
        check_3: state.check_3,
        switch_booss: state.switch_booss,
        slider: state.slider,
        radio_a: state.radio_a,
        son: state.son,
      ),
    );
  }

  void switch_s() {
    emit(
      Hw(
        switch_1: state.switch_1,
        switch_2: !state.switch_2,
        switch_3: state.switch_3,
        check_1: state.check_1,
        check_2: state.check_2,
        check_3: state.check_3,
        switch_booss: state.switch_booss,
        slider: state.slider,
        radio_a: state.radio_a,
        son: state.son,
      ),
    );
  }

  void switch_t() {
    emit(
      Hw(
        switch_1: state.switch_1,
        switch_2: state.switch_2,
        switch_3: !state.switch_3,
        check_1: state.check_1,
        check_2: state.check_2,
        check_3: state.check_3,
        switch_booss: state.switch_booss,
        slider: state.slider,
        radio_a: state.radio_a,
        son: state.son,
      ),
    );
  }

  void check_f() {
    emit(
      Hw(
        switch_1: state.switch_1,
        switch_2: state.switch_2,
        switch_3: state.switch_3,
        check_1: !state.check_1,
        check_2: state.check_2,
        check_3: state.check_3,
        switch_booss: state.switch_booss,
        slider: state.slider,
        radio_a: state.radio_a,
        son: state.son,
      ),
    );
  }

  void check_s() {
    emit(
      Hw(
        switch_1: state.switch_1,
        switch_2: state.switch_2,
        switch_3: state.switch_3,
        check_1: state.check_1,
        check_2: !state.check_2,
        check_3: state.check_3,
        switch_booss: state.switch_booss,
        slider: state.slider,
        radio_a: state.radio_a,
        son: state.son,
      ),
    );
  }

  void check_t() {
    emit(
      Hw(
        switch_1: state.switch_1,
        switch_2: state.switch_2,
        switch_3: state.switch_3,
        check_1: state.check_1,
        check_2: state.check_2,
        check_3: !state.check_3,
        switch_booss: state.switch_booss,
        slider: state.slider,
        radio_a: state.radio_a,
        son: state.son,
      ),
    );
  }

  void Switch_booss() {
    emit(
      Hw(
        switch_1: state.switch_1,
        switch_2: state.switch_2,
        switch_3: state.switch_3,
        check_1: state.check_1,
        check_2: state.check_2,
        check_3: state.check_3,
        switch_booss: !state.switch_booss,
        slider: state.slider,
        radio_a: state.radio_a,
        son: state.son,
      ),
    );
  }

  void Slider_add(double value_new) {
    emit(
      Hw(
        switch_1: state.switch_1,
        switch_2: state.switch_2,
        switch_3: state.switch_3,
        check_1: state.check_1,
        check_2: state.check_2,
        check_3: state.check_3,
        switch_booss: state.switch_booss,
        slider: value_new.toDouble(),
        radio_a: state.radio_a,
        son: state.son,
      ),
    );
  }

  void radio_add(int value_new) {
    emit(
      Hw(
        switch_1: state.switch_1,
        switch_2: state.switch_2,
        switch_3: state.switch_3,
        check_1: state.check_1,
        check_2: state.check_2,
        check_3: state.check_3,
        switch_booss: state.switch_booss,
        slider: state.slider,
        radio_a: value_new,
        son: state.son,
      ),
    );
  }

  void son_add() {
    emit(
      Hw(
        switch_1: state.switch_1,
        switch_2: state.switch_2,
        switch_3: state.switch_3,
        check_1: state.check_1,
        check_2: state.check_2,
        check_3: state.check_3,
        switch_booss: state.switch_booss,
        slider: state.slider,
        radio_a: state.radio_a,
        son: state.son + 1,
      ),
    );
  }

  void son_remove() {
    if (state.son >= 1) {
      emit(
        Hw(
          switch_1: state.switch_1,
          switch_2: state.switch_2,
          switch_3: state.switch_3,
          check_1: state.check_1,
          check_2: state.check_2,
          check_3: state.check_3,
          switch_booss: state.switch_booss,
          slider: state.slider,
          radio_a: state.radio_a,
          son: state.son - 1,
        ),
      );
    }
  }
}
