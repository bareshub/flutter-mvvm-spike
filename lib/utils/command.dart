import 'package:flutter/material.dart';
import 'package:flutter_mvvm_spike/utils/result.dart';

typedef PlainCommandAction<T> = Future<Result<T>> Function();
typedef ArgCommandAction<T, A> = Future<Result<T>> Function(A);

/// Facilitates interaction with a ViewModel.
///
/// Encapsulates an action,
/// exposes its running and error states,
/// and ensures that it can't be launched again until it finishes.
///
/// Use [PlainCommand] for actions without arguments.
/// Use [ArgCommand] for actions with one argument.
///
/// Actions must return a [Result].
///
/// Consume the action result by listening to changes,
/// then call to [clearResult] when the state is consumed.
abstract class Command<T> extends ChangeNotifier {
  Command();

  bool _running = false;

  /// True when the action is running.
  bool get running => _running;

  Result<T>? _result;

  /// True if action completed with error.
  bool get error => _result is Error;

  /// True if action completed successfully.
  bool get completed => _result is Ok;

  /// Get last action result.
  Result? get result => _result;

  /// Clear last action result.
  void clearResult() {
    _result = null;
    notifyListeners();
  }

  /// Internal execute implementation.
  Future<void> _execute(PlainCommandAction<T> action) async {
    // Ensure that action can't launch multiple times.
    if (_running) return;

    // Notify listeners.
    _running = true;
    _result = null;
    notifyListeners();

    try {
      _result = await action();
    } finally {
      _running = false;
      notifyListeners();
    }
  }
}

/// [Command] without arguments.
/// Takes a [PlainCommandAction] as action.
class PlainCommand<T> extends Command<T> {
  PlainCommand(this._action);

  final PlainCommandAction<T> _action;

  /// Executes the action.
  Future<void> execute() async {
    await _execute(_action);
  }
}

/// [Command] with one argument.
/// Takes a [ArgCommandAction] as action.
class ArgCommand<T, A> extends Command<T> {
  ArgCommand(this._action);

  final ArgCommandAction<T, A> _action;

  Future<void> execute(A argument) async {
    await _execute(() => _action(argument));
  }
}
