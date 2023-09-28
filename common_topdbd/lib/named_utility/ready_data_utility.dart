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

  static String get getVersionByTOPDBDVersionWeb {
    return "v0.0.1_beta";
  }

  static Map<String,String> get getMapWhereKeyCountryAndValuePathToAssets {
    return {
      "BA" : "assets/icon/flags/bosnia_and_herzegovina.png",
      "CA" : "assets/icon/flags/canada.png",
      "GA" : "assets/icon/flags/gabon.png",
      "LA" : "assets/icon/flags/laos.png",
      "MA" : "assets/icon/flags/morocco.png",
      "NA" : "assets/icon/flags/namibia.png",
      "PA" : "assets/icon/flags/panama.png",
      "QA" : "assets/icon/flags/qatar.png",
      "SA" : "assets/icon/flags/saudi_arabia.png",
      "UA" : "assets/icon/flags/ukraine.png",
      "VA" : "assets/icon/flags/vatican_city.png",
      "ZA" : "assets/icon/flags/south_africa.png",
      "BB" : "assets/icon/flags/barbados.png",
      "GB" : "assets/icon/flags/united_kingdom.png",
      "LB" : "assets/icon/flags/lebanon.png",
      "SB" : "assets/icon/flags/solomon_islands.png",
      "CC" : "assets/icon/flags/cocos_keeling_islands.png",
      "EC" : "assets/icon/flags/ecuador.png",
      "IC" : "assets/icon/flags/canary_islands.png",
      "LC" : "assets/icon/flags/saint_lucia.png",
      "MC" : "assets/icon/flags/monaco.png",
      "NC" : "assets/icon/flags/new_caledonia.png",
      "SC" : "assets/icon/flags/seychelles.png",
      "TC" : "assets/icon/flags/turks_and_caicos_islands.png",
      "VC" : "assets/icon/flags/saint_vincent_and_the_grenadines.png",
      "AD" : "assets/icon/flags/andorra.png",
      "BD" : "assets/icon/flags/bangladesh.png",
      "CD" : "assets/icon/flags/democratic_republic_of_the_congo.png",
      "GD" : "assets/icon/flags/grenada.png",
      "ID" : "assets/icon/flags/indonesia.png",
      "MD" : "assets/icon/flags/moldova.png",
      "SD" : "assets/icon/flags/sudan.png",
      "TD" : "assets/icon/flags/chad.png",
      "AE" : "assets/icon/flags/united_arab_emirates.png",
      "BE" : "assets/icon/flags/belgium.png",
      "DE" : "assets/icon/flags/germany.png",
      "EE" : "assets/icon/flags/estonia.png",
      "GE" : "assets/icon/flags/georgia.png",
      "IE" : "assets/icon/flags/ireland.png",
      "JE" : "assets/icon/flags/jersey.png",
      "KE" : "assets/icon/flags/kenya.png",
      "ME" : "assets/icon/flags/montenegro.png",
      "NE" : "assets/icon/flags/niger.png",
      "PE" : "assets/icon/flags/peru.png",
      "SE" : "assets/icon/flags/sweden.png",
      "VE" : "assets/icon/flags/venezuela.png",
      "YE" : "assets/icon/flags/yemen.png",
      "AF" : "assets/icon/flags/afghanistan.png",
      "BF" : "assets/icon/flags/burkina_faso.png",
      "CF" : "assets/icon/flags/central_african_republic.png",
      "MF" : "assets/icon/flags/saint_martin.png",
      "NF" : "assets/icon/flags/norfolk_island.png",
      "PF" : "assets/icon/flags/french_polynesia.png",
      "TF" : "assets/icon/flags/french_southern_territories.png",
      "WF" : "assets/icon/flags/wallis_and_futuna.png",
      "AG" : "assets/icon/flags/antigua_and_barbuda.png",
      "BG" : "assets/icon/flags/bulgaria.png",
      "CG" : "assets/icon/flags/republic_of_the_congo.png",
      "EG" : "assets/icon/flags/egypt.png",
      "GG" : "assets/icon/flags/guernsey.png",
      "KG" : "assets/icon/flags/kyrgyzstan.png",
      "MG" : "assets/icon/flags/madagascar.png",
      "NG" : "assets/icon/flags/nigeria.png",
      "PG" : "assets/icon/flags/papua_new_guinea.png",
      "SG" : "assets/icon/flags/singapore.png",
      "TG" : "assets/icon/flags/togo.png",
      "UG" : "assets/icon/flags/uganda.png",
      "VG" : "assets/icon/flags/british_virgin_islands.png",
      "BH" : "assets/icon/flags/bahrain.png",
      "CH" : "assets/icon/flags/switzerland.png",
      "EH" : "assets/icon/flags/western_sahara.png",
      "GH" : "assets/icon/flags/ghana.png",
      "KH" : "assets/icon/flags/cambodia.png",
      "MH" : "assets/icon/flags/marshall_islands.png",
      "PH" : "assets/icon/flags/philippines.png",
      "SH" : "assets/icon/flags/saint_helena.png",
      "TH" : "assets/icon/flags/thailand.png",
      "AI" : "assets/icon/flags/anguilla.png",
      "BI" : "assets/icon/flags/burundi.png",
      "CI" : "assets/icon/flags/cote_divoire.png",
      "FI" : "assets/icon/flags/finland.png",
      "GI" : "assets/icon/flags/gibraltar.png",
      "KI" : "assets/icon/flags/kiribati.png",
      "LI" : "assets/icon/flags/liechtenstein.png",
      "NI" : "assets/icon/flags/nicaragua.png",
      "SI" : "assets/icon/flags/slovenia.png",
      "VI" : "assets/icon/flags/us_virgin_islands.png",
      "BJ" : "assets/icon/flags/benin.png",
      "DJ" : "assets/icon/flags/djibouti.png",
      "FJ" : "assets/icon/flags/fiji.png",
      "TJ" : "assets/icon/flags/tajikistan.png",
      "CK" : "assets/icon/flags/cook_islands.png",
      "DK" : "assets/icon/flags/denmark.png",
      "FK" : "assets/icon/flags/falkland_islands.png",
      "HK" : "assets/icon/flags/hong_kong.png",
      "LK" : "assets/icon/flags/sri_lanka.png",
      "MK" : "assets/icon/flags/macedonia.png",
      "PK" : "assets/icon/flags/pakistan.png",
      "SK" : "assets/icon/flags/slovakia.png",
      "TK" : "assets/icon/flags/tokelau.png",
      "AL" : "assets/icon/flags/albania.png",
      "BL" : "assets/icon/flags/saint_barthelemy.png",
      "CL" : "assets/icon/flags/chile.png",
      "GL" : "assets/icon/flags/greenland.png",
      "IL" : "assets/icon/flags/israel.png",
      "ML" : "assets/icon/flags/mali.png",
      "NL" : "assets/icon/flags/netherlands.png",
      "PL" : "assets/icon/flags/poland.png",
      "SL" : "assets/icon/flags/sierra_leone.png",
      "AM" : "assets/icon/flags/armenia.png",
      "BM" : "assets/icon/flags/bermuda.png",
      "CM" : "assets/icon/flags/cameroon.png",
      "DM" : "assets/icon/flags/dominica.png",
      "FM" : "assets/icon/flags/micronesia.png",
      "GM" : "assets/icon/flags/gambia.png",
      "IM" : "assets/icon/flags/isle_of_man.png",
      "JM" : "assets/icon/flags/jamaica.png",
      "KM" : "assets/icon/flags/comoros.png",
      "MM" : "assets/icon/flags/myanmar.png",
      "OM" : "assets/icon/flags/oman.png",
      "SM" : "assets/icon/flags/san_marino.png",
      "TM" : "assets/icon/flags/turkmenistan.png",
      "ZM" : "assets/icon/flags/zambia.png",
      "BN" : "assets/icon/flags/brunei.png",
      "CN" : "assets/icon/flags/china.png",
      "GN" : "assets/icon/flags/guinea.png",
      "HN" : "assets/icon/flags/honduras.png",
      "IN" : "assets/icon/flags/india.png",
      "KN" : "assets/icon/flags/saint_kitts_and_nevis.png",
      "MN" : "assets/icon/flags/mongolia.png",
      "PN" : "assets/icon/flags/pitcairn_islands.png",
      "SN" : "assets/icon/flags/senegal.png",
      "TN" : "assets/icon/flags/tunisia.png",
      "VN" : "assets/icon/flags/vietnam.png",
      "AO" : "assets/icon/flags/angola.png",
      "BO" : "assets/icon/flags/bolivia.png",
      "CO" : "assets/icon/flags/colombia.png",
      "DO" : "assets/icon/flags/dominican_republic.png",
      "JO" : "assets/icon/flags/jordan.png",
      "MO" : "assets/icon/flags/macau.png",
      "NO" : "assets/icon/flags/norway.png",
      "RO" : "assets/icon/flags/romania.png",
      "SO" : "assets/icon/flags/somalia.png",
      "TO" : "assets/icon/flags/tonga.png",
      "JP" : "assets/icon/flags/japan.png",
      "KP" : "assets/icon/flags/north_korea.png",
      "MP" : "assets/icon/flags/northern_mariana_islands.png",
      "NP" : "assets/icon/flags/nepal.png",
      "AQ" : "assets/icon/flags/antarctica.png",
      "GQ" : "assets/icon/flags/equatorial_guinea.png",
      "IQ" : "assets/icon/flags/iraq.png",
      "MQ" : "assets/icon/flags/martinique.png",
      "AR" : "assets/icon/flags/argentina.png",
      "BR" : "assets/icon/flags/brazil.png",
      "CR" : "assets/icon/flags/costa_rica.png",
      "ER" : "assets/icon/flags/eritrea.png",
      "FR" : "assets/icon/flags/france.png",
      "GR" : "assets/icon/flags/greece.png",
      "HR" : "assets/icon/flags/croatia.png",
      "IR" : "assets/icon/flags/iran.png",
      "KR" : "assets/icon/flags/south_korea.png",
      "LR" : "assets/icon/flags/liberia.png",
      "MR" : "assets/icon/flags/mauritania.png",
      "NR" : "assets/icon/flags/nauru.png",
      "PR" : "assets/icon/flags/puerto_rico.png",
      "SR" : "assets/icon/flags/suriname.png",
      "TR" : "assets/icon/flags/turkey.png",
      "AS" : "assets/icon/flags/american_samoa.png",
      "BS" : "assets/icon/flags/bahamas.png",
      "ES" : "assets/icon/flags/spain.png",
      "IS" : "assets/icon/flags/iceland.png",
      "LS" : "assets/icon/flags/lesotho.png",
      "MS" : "assets/icon/flags/montserrat.png",
      "RS" : "assets/icon/flags/serbia.png",
      "US" : "assets/icon/flags/united_states.png",
      "WS" : "assets/icon/flags/samoa.png",
      "AT" : "assets/icon/flags/austria.png",
      "ET" : "assets/icon/flags/ethiopia.png",
      "GT" : "assets/icon/flags/guatemala.png",
      "HT" : "assets/icon/flags/haiti.png",
      "IT" : "assets/icon/flags/italy.png",
      "LT" : "assets/icon/flags/lithuania.png",
      "MT" : "assets/icon/flags/malta.png",
      "PT" : "assets/icon/flags/portugal.png",
      "AU" : "assets/icon/flags/australia.png",
      "CU" : "assets/icon/flags/cuba.png",
      "EU" : "assets/icon/flags/european_union.png",
      "GU" : "assets/icon/flags/guam.png",
      "HU" : "assets/icon/flags/hungary.png",
      "LU" : "assets/icon/flags/luxembourg.png",
      "MU" : "assets/icon/flags/mauritius.png",
      "NU" : "assets/icon/flags/niue.png",
      "RU" : "assets/icon/flags/russia.png",
      "VU" : "assets/icon/flags/vanuatu.png",
      "LV" : "assets/icon/flags/latvia.png",
      "MV" : "assets/icon/flags/maldives.png",
      "PW" : "assets/icon/flags/palau.png",
      "TW" : "assets/icon/flags/taiwan.png",
      "ZW" : "assets/icon/flags/zimbabwe.png",
      "MX" : "assets/icon/flags/mexico.png",
      "BY" : "assets/icon/flags/belarus.png",
      "CY" : "assets/icon/flags/cyprus.png",
      "LY" : "assets/icon/flags/libya.png",
      "MY" : "assets/icon/flags/malaysia.png",
      "UY" : "assets/icon/flags/uruguay.png",
      "AZ" : "assets/icon/flags/azerbaijan.png",
      "BZ" : "assets/icon/flags/belize.png",
      "CZ" : "assets/icon/flags/czech_republic.png",
      "DZ" : "assets/icon/flags/algeria.png",
      "KZ" : "assets/icon/flags/kazakhstan.png",
      "MZ" : "assets/icon/flags/mozambique.png",
      "NZ" : "assets/icon/flags/new_zealand.png",
      "SZ" : "assets/icon/flags/swaziland.png",
      "TZ" : "assets/icon/flags/tanzania.png",
      "UZ" : "assets/icon/flags/uzbekistan.png",
    };
  }
}