import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vuexy_flutter/presentation/core/styles/colors.dart';

@RoutePage(deferredLoading: true)
class AnalyticsDashboardPage extends StatelessWidget {
  const AnalyticsDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 300,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Card(
                  color: AppColors.info,
                  child: PageView(
                    children: const [
                      Column(
                        children: [Text("data")],
                      )
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: Card(
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        value: 0.8,
                        minHeight: 10,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )
                    ],
                  ),
                ),
              ),
              const Expanded(
                  child: Card(
                child: Column(
                  children: [],
                ),
              )),
            ],
          ),
        ),
        const SizedBox(
          height: 400,
          child: Row(
            children: [
              Expanded(
                child: Card(
                  child: Column(
                    children: [],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Column(
                    children: [],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
