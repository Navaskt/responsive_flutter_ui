import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../state/counter_provider.dart';

class DashboardTablet extends ConsumerWidget {
  const DashboardTablet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard (Tablet)')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Expanded(
              child: Card(
                child: Center(
                  child: Text(
                    'Counter: $counter',
                    style: const TextStyle(fontSize: 28),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Card(
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () => ref.read(counterProvider.notifier).state++,
                    icon: const Icon(Icons.add),
                    label: const Text('Increase'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}