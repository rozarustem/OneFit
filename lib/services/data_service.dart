import 'dart:convert';
import 'dart:io';

import '../models/models.dart';

class DataService {
  Future<AppData> loadAppData() async {
    final regions = await _loadRegions();
    final clubs = await _loadClubs();
    final sports = await _loadSports();
    final subscriptions = await _loadSubscriptions();
    final schedule = await _loadSchedule();

    return AppData(
      regions: regions,
      clubs: clubs,
      sports: sports,
      subscriptions: subscriptions,
      schedule: schedule,
    );
  }

  Future<List<Region>> _loadRegions() async {
    final file = File('assets/data/regions.json');
    final content = await file.readAsString();
    final List data = jsonDecode(content);
    return data.map((e) => Region.fromJson(e)).toList();
  }

  Future<List<Club>> _loadClubs() async {
    final file = File('assets/data/clubs.json');
    final content = await file.readAsString();
    final List data = jsonDecode(content);
    return data.map((e) => Club.fromJson(e)).toList();
  }

  Future<List<Sport>> _loadSports() async {
    final file = File('assets/data/sports.json');
    final content = await file.readAsString();
    final List data = jsonDecode(content);
    return data.map((e) => Sport.fromJson(e)).toList();
  }

  Future<List<Subscription>> _loadSubscriptions() async {
    final file = File('assets/data/subscriptions.json');
    final content = await file.readAsString();
    final List data = jsonDecode(content);
    return data.map((e) => Subscription.fromJson(e)).toList();
  }

  Future<List<ScheduleItem>> _loadSchedule() async {
    final file = File('assets/data/schedule.json');
    final content = await file.readAsString();
    final List data = jsonDecode(content);
    return data.map((e) => ScheduleItem.fromJson(e)).toList();
  }
}
