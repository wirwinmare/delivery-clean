import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common_widgets.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    this.error,
    this.loading,
  });

  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget Function(Object, StackTrace)? error;
  final Widget Function()? loading;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: error ??
          (error, stackTrace) => ErrorMessage(
                error: error.toString(),
              ),
      loading: loading ?? () => const LoadingIndicator(),
    );
  }
}

/// Sliver equivalent of [AsyncValueWidget]
class AsyncValueSliverWidget<T> extends StatelessWidget {
  const AsyncValueSliverWidget({
    super.key,
    required this.value,
    required this.data,
    this.error,
    this.loading,
  });

  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget Function(Object, StackTrace)? error;
  final Widget Function()? loading;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, st) => SliverToBoxAdapter(
        child: error?.call(e, st) ??
            ErrorMessage(
              error: error.toString(),
            ),
      ),
      loading: () => SliverToBoxAdapter(
        child: loading?.call() ?? const LoadingIndicator(),
      ),
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
    required this.error,
  });

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ErrorMessageWidget(error),
    );
  }
}
