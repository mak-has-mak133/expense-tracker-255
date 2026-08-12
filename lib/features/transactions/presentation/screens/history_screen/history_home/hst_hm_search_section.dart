import 'dart:async';

import 'package:expense_tracker/features/transactions/provider/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HstHmSearchSection extends StatefulWidget {
  const HstHmSearchSection({super.key});

  @override
  State<HstHmSearchSection> createState() => _HstHmSearchSectionState();
}

class _HstHmSearchSectionState extends State<HstHmSearchSection> {
  Timer? _debounce;

  void _updateSearchQuery(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (mounted) context.read<TransactionProvider>().updateSearchQuery(query);
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextField(
          onChanged: _updateSearchQuery,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search transactions...',
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
