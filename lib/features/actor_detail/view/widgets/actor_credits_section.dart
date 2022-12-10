import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/features/actor_detail/view/widgets/actor_cast_item.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';
import 'package:movie_list_bloc/models/actor/actor_model.dart';

class ActorCreditsSection extends HookWidget {
  const ActorCreditsSection({super.key, required this.credits});

  final ActorCreditsModel credits;

  @override
  Widget build(BuildContext context) {
    const sizeDefault = 20;

    final l10n = context.l10n;
    final totalSize = credits.casts.length;

    final isExpanded = useState(false);

    final lenExpanded = useState(sizeDefault);
    final countExpanded = useState(1);

    final totalCount = totalSize / sizeDefault;
    final hasMore = !isExpanded.value && totalSize >= (lenExpanded.value + 1);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          l10n.actorDetailCharacters(totalSize),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        ListView.separated(
          itemCount: hasMore ? (lenExpanded.value + 1) : totalSize,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, __) => const Divider(height: 5),
          itemBuilder: (_, index) {
            return (index == lenExpanded.value && !isExpanded.value)
                ? ListTile(
                    onTap: () {
                      countExpanded.value++;
                      lenExpanded.value = sizeDefault * countExpanded.value;

                      if (countExpanded.value >= totalCount) {
                        isExpanded.value = true;
                      }
                    },
                    leading: const Icon(Icons.keyboard_arrow_down),
                    title: Text(
                      l10n.actorDetailLoadMore(totalSize - lenExpanded.value),
                    ),
                  )
                : ActorCastItem(actorCredit: credits.casts[index]);
          },
        ),
      ],
    );
  }
}
