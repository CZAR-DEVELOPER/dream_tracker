import 'package:dream_tracker/presentation/common/presentation_common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
                leading: Center(
                  child: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),
                title: Text('Mis tableros')),
            CustomSliverList(padding: EdgeInsets.all(16), children: [TextSubdisplay('Mis tableros')]),
            CustomSliverStickyBar(
                child: Row(
              children: [
                SpaceX(),
                ChoiceChip(
                  label: Text('Todos'),
                  selected: false,
                  onSelected: (value) {},
                ),
                SpaceX(
                  percent: .5,
                ),
                ChoiceChip(
                  label: Text('Rutinas'),
                  selected: false,
                  onSelected: (value) {},
                ),
                SpaceX(
                  percent: .5,
                ),
                ChoiceChip(
                  label: Text('Listados'),
                  selected: false,
                  onSelected: (value) {},
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
