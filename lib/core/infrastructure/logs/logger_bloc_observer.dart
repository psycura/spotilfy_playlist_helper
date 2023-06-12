import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class LoggerBlocObserver extends BlocObserver {
  final Logger logger;

  LoggerBlocObserver(this.logger);

  @override
  void onCreate(BlocBase bloc) {
    logger.d(
      '$bloc - created, with current state: ${bloc.state}',
    );
    super.onCreate(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e('[ERROR]:onError $bloc - $error \n $stackTrace');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.d('onEvent $bloc - $event');
  }

  @override
  void onClose(BlocBase bloc) {
    logger.d('onClose $bloc');

    super.onClose(bloc);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.d('onTransition to state ${transition.nextState}');
  }
}
