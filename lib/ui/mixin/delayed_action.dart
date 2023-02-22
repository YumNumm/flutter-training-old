import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin DelayedActionMixin on ConsumerWidget {
  final delayDuration = Duration.zero;

  Future<void> registerDelayedAction(
    BuildContext context,
    void Function() action,
  ) async {
    await WidgetsBinding.instance.endOfFrame.then(
      (_) async {
        await Future<void>.delayed(delayDuration);
        if (context.mounted) {
          action();
        }
      },
    );
  }
}
