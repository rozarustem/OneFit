class UserProfile {
  final String firstName;
  final String lastName;
  final int age;

  UserProfile({
    required this.firstName,
    required this.lastName,
    required this.age,
  });
}

class Region {
  final int id;
  final String name;

  Region({
    required this.id,
    required this.name,
  });

  factory Region.fromJson(Map<String, dynamic> json) {
    return Region(
      id: json['id'],
      name: json['name'],
    );
  }
}

class Club {
  final int id;
  final String name;
  final int regionId;
  final String address;
  final List<int> sportIds;

  Club({
    required this.id,
    required this.name,
    required this.regionId,
    required this.address,
    required this.sportIds,
  });

  factory Club.fromJson(Map<String, dynamic> json) {
    return Club(
      id: json['id'],
      name: json['name'],
      regionId: json['regionId'],
      address: json['address'],
      sportIds: List<int>.from(json['sportIds']),
    );
  }
}

class Sport {
  final int id;
  final String name;
  final String coach;
  final String description;

  Sport({
    required this.id,
    required this.name,
    required this.coach,
    required this.description,
  });

  factory Sport.fromJson(Map<String, dynamic> json) {
    return Sport(
      id: json['id'],
      name: json['name'],
      coach: json['coach'],
      description: json['description'],
    );
  }
}

class Subscription {
  final int id;
  final String name;
  final int price;
  final List<String> benefits;

  Subscription({
    required this.id,
    required this.name,
    required this.price,
    required this.benefits,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      benefits: List<String>.from(json['benefits']),
    );
  }
}

class ScheduleItem {
  final int id;
  final int clubId;
  final int sportId;
  final String day;
  final String time;
  final String coach;

  ScheduleItem({
    required this.id,
    required this.clubId,
    required this.sportId,
    required this.day,
    required this.time,
    required this.coach,
  });

  factory ScheduleItem.fromJson(Map<String, dynamic> json) {
    return ScheduleItem(
      id: json['id'],
      clubId: json['clubId'],
      sportId: json['sportId'],
      day: json['day'],
      time: json['time'],
      coach: json['coach'],
    );
  }
}

class AppData {
  final List<Region> regions;
  final List<Club> clubs;
  final List<Sport> sports;
  final List<Subscription> subscriptions;
  final List<ScheduleItem> schedule;

  AppData({
    required this.regions,
    required this.clubs,
    required this.sports,
    required this.subscriptions,
    required this.schedule,
  });
}
