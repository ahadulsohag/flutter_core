class Activity {
  final String activity;
  final double availability;
  final String type;
  final int participants;
  final double price;
  final String accessibility;
  final String duration;
  final bool kidFriendly;
  final Uri? link;
  final String key;

  const Activity({
    required this.activity,
    required this.availability,
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.duration,
    required this.kidFriendly,
    required this.link,
    required this.key,
  });

  factory Activity.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'activity': String activity,
        'availability': num availability,
        'type': String type,
        'participants': int participants,
        'price': num price,
        'accessibility': String accessibility,
        'duration': String duration,
        'kidFriendly': bool kidFriendly,
        'link': String? link,
        'key': String key
      } => Activity(
        activity: activity,
        availability: (availability).toDouble(),
        type: type,
        participants: participants,
        price: (price).toDouble(),
        accessibility: accessibility,
        duration: duration,
        kidFriendly: kidFriendly,
        link: link != null ? Uri.tryParse(link) : null,
        key: key,
      ),
      _ => throw const FormatException('Failed to load activity.'),
    };
  }

  Map<String, dynamic> toJson() => {
        'activity': activity,
        'availability': availability,
        'type': type,
        'participants': participants,
        'price': price,
        'accessibility': accessibility,
        'duration': duration,
        'kidFriendly': kidFriendly,
        'link': link?.toString(),
        'key': key,
      };
}
