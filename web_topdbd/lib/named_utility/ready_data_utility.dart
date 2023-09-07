import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:meta/meta.dart';

@immutable
final class ReadyDataUtility {
  const ReadyDataUtility._();

  static ListManiac<Maniac> get getListManiac {
    final listManiac = List<Maniac>.empty(growable: true);
    listManiac.add(const Maniac("Anna", "assets/icon/dbd/maniac/maniac_anna.png"));
    listManiac.add(const Maniac("Bilyas", "assets/icon/dbd/maniac/maniac_bilyas.png"));
    listManiac.add(const Maniac("Bubba", "assets/icon/dbd/maniac/maniac_bubba.png"));
    listManiac.add(const Maniac("Demogorgon", "assets/icon/dbd/maniac/maniac_demogorgon.png"));
    listManiac.add(const Maniac("Doctor", "assets/icon/dbd/maniac/maniac_doctor.png"));
    listManiac.add(const Maniac("Kolya", "assets/icon/dbd/maniac/maniac_kolya.png"));
    listManiac.add(const Maniac("Mor", "assets/icon/dbd/maniac/maniac_mor.png"));
    listManiac.add(const Maniac("Nurse", "assets/icon/dbd/maniac/maniac_nurse.png"));
    listManiac.add(const Maniac("Trapper", "assets/icon/dbd/maniac/maniac_trapper.png"));
    listManiac.add(const Maniac("Vesker", "assets/icon/dbd/maniac/maniac_vesker.png"));
    return ListManiac(listManiac);
  }

  static ListMaps<Maps> get getListMaps {
    final listMaps = List<Maps>.empty(growable: true);
    listMaps.add(const Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"));
    listMaps.add(const Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"));
    listMaps.add(const Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"));
    listMaps.add(const Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"));
    listMaps.add(const Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"));
    listMaps.add(const Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png"));
    return ListMaps(listMaps);
  }

  static ListManiacPerk<ManiacPerk> get getListManiacPerk {
    final listManiacPerk = List<ManiacPerk>.empty(growable: true);
    return ListManiacPerk(listManiacPerk);
  }

  static ListSurvivorPerk<SurvivorPerk> get getListSurvivorPerk {
    final listSurvivorPerk = List<SurvivorPerk>.empty(growable: true);
    return ListSurvivorPerk(listSurvivorPerk);
  }
}