import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

import '../viewmodel/RootViewModel/root_viewmodel.dart';

abstract class RootWidget<T extends RootViewModel> extends StatelessWidget {
  final T _model;

  get model => _model;

  // ignore: use_key_in_widget_constructors
  const RootWidget(this._model);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<T>.reactive(
      builder: (context, model, child) {
        return widget(model, context);
      },
      viewModelBuilder: () => _model,
      onModelReady: (model) => model.initialize(),
      disposeViewModel: false,
    );
  }

  Widget widget(T model, BuildContext context);

  Widget withProgress({required Widget body, required T model}) {
    return Stack(
      children: [
        Visibility(
          visible: model.loading,
          replacement: Container(),
          child: body,
        ),
        model.loading ? const Center(child: CircularProgressIndicator()) : Container(),
      ],
    );
  }
}
