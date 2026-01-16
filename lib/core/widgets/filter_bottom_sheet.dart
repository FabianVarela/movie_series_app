import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_series_app/l10n/l10n.dart';

typedef OptionItem = ({IconData icon, String title});

class FilterBottomSheet extends HookWidget {
  const FilterBottomSheet({
    required this.optionFilterList,
    this.initialFilter,
    super.key,
  });

  final List<OptionItem> optionFilterList;
  final int? initialFilter;

  static Future<int?> show(
    BuildContext context, {
    required List<OptionItem> optionFilterList,
    int? initialFilter,
  }) {
    return showModalBottomSheet<int>(
      context: context,
      showDragHandle: true,
      useRootNavigator: true,
      isScrollControlled: true,
      builder: (_) => FilterBottomSheet(
        optionFilterList: optionFilterList,
        initialFilter: initialFilter,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedFilter = useState(initialFilter);
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const .symmetric(vertical: 16, horizontal: 20),
      child: Column(
        spacing: 12,
        mainAxisSize: .min,
        crossAxisAlignment: .start,
        children: <Widget>[
          Text(
            context.l10n.filterTitle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: .bold,
              color: colorScheme.onSurface,
            ),
          ),
          Padding(
            padding: const .only(top: 8, bottom: 4),
            child: Column(
              spacing: 4,
              children: <Widget>[
                for (final (index, item) in optionFilterList.indexed)
                  _SelectedFilterItem(
                    isSelected: index == selectedFilter.value,
                    onSelected: () => selectedFilter.value = index,
                    item: item,
                  ),
              ],
            ),
          ),
          Row(
            spacing: 12,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  style: TextButton.styleFrom(
                    backgroundColor: colorScheme.surfaceContainerHighest,
                    padding: const .symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: .circular(30)),
                  ),
                  child: Text(
                    context.l10n.filterCancelButton,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(
                    selectedFilter.value,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const .symmetric(vertical: 12),
                    backgroundColor: colorScheme.primary,
                    foregroundColor: colorScheme.onPrimary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: .circular(30)),
                  ),
                  child: Text(
                    context.l10n.filterOkButton,
                    style: const TextStyle(fontSize: 16, fontWeight: .w600),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SelectedFilterItem extends StatelessWidget {
  const _SelectedFilterItem({
    required this.isSelected,
    required this.onSelected,
    required this.item,
  });

  final bool isSelected;
  final VoidCallback onSelected;
  final ({IconData icon, String title}) item;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final selectedColor = colorScheme.primary;

    return InkWell(
      onTap: onSelected,
      borderRadius: .circular(12),
      child: Container(
        padding: const .symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: .circular(12),
          color: isSelected
              ? selectedColor.withValues(alpha: .15)
              : Colors.transparent,
        ),
        child: Row(
          spacing: 16,
          children: <Widget>[
            Icon(
              item.icon,
              color: isSelected ? selectedColor : colorScheme.onSurfaceVariant,
            ),
            Expanded(
              child: Text(
                item.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isSelected ? .w600 : .normal,
                  color: isSelected ? selectedColor : colorScheme.onSurface,
                ),
              ),
            ),
            SizedBox.square(
              dimension: 24,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: .circle,
                  color: isSelected ? selectedColor : Colors.transparent,
                  border: .all(
                    color: isSelected ? selectedColor : colorScheme.outline,
                    width: 2,
                  ),
                ),
                child: switch (isSelected) {
                  true => Center(
                    child: SizedBox.square(
                      dimension: 12,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),
                  false => null,
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
