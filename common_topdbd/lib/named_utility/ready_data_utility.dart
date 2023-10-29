import 'package:common_topdbd/model/country_tc/country_tc.dart';
import 'package:common_topdbd/model/country_tc/list_country_tc.dart';
import 'package:common_topdbd/model/init_stream/init_stream.dart';
import 'package:common_topdbd/model/init_stream/list_init_stream.dart';
import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:common_topdbd/named_utility/keys_name_stream_to_init_stream_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
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

  static Strings get getVersionByTOPDBDVersionWeb {
    return const Strings("v0.0.1_beta");
  }

  static ListCountryTC<CountryTC> get getListCountryTC {
    final listCountryTC = List<CountryTC>.empty(growable: true);
    listCountryTC.add(const CountryTC("BA","Bosnia and Herzegovina","assets/icon/flags/bosnia_and_herzegovina.png"));
    listCountryTC.add(const CountryTC("CA","Canada","assets/icon/flags/canada.png"));
    listCountryTC.add(const CountryTC("GA","Gabon","assets/icon/flags/gabon.png"));
    listCountryTC.add(const CountryTC("LA","Laos","assets/icon/flags/laos.png"));
    listCountryTC.add(const CountryTC("MA","Morocco","assets/icon/flags/morocco.png"));
    listCountryTC.add(const CountryTC("NA","Namibia","assets/icon/flags/namibia.png"));
    listCountryTC.add(const CountryTC("PA","Panama","assets/icon/flags/panama.png"));
    listCountryTC.add(const CountryTC("QA","Qatar","assets/icon/flags/qatar.png"));
    listCountryTC.add(const CountryTC("SA","Saudi Arabia","assets/icon/flags/saudi_arabia.png"));
    listCountryTC.add(const CountryTC("UA","Ukraine","assets/icon/flags/ukraine.png"));
    listCountryTC.add(const CountryTC("VA","Vatican City","assets/icon/flags/vatican_city.png"));
    listCountryTC.add(const CountryTC("ZA","South Africa","assets/icon/flags/south_africa.png"));
    listCountryTC.add(const CountryTC("BB","Barbados","assets/icon/flags/barbados.png"));
    listCountryTC.add(const CountryTC("GB","United Kingdom","assets/icon/flags/united_kingdom.png"));
    listCountryTC.add(const CountryTC("LB","Lebanon","assets/icon/flags/lebanon.png"));
    listCountryTC.add(const CountryTC("SB","Solomon Islands","assets/icon/flags/solomon_islands.png"));
    listCountryTC.add(const CountryTC("CC","Cocos Keeling Islands","assets/icon/flags/cocos_keeling_islands.png"));
    listCountryTC.add(const CountryTC("EC","Ecuador","assets/icon/flags/ecuador.png"));
    listCountryTC.add(const CountryTC("IC","Canary Islands","assets/icon/flags/canary_islands.png"));
    listCountryTC.add(const CountryTC("LC","Saint Lucia","assets/icon/flags/saint_lucia.png"));
    listCountryTC.add(const CountryTC("MC","Monaco","assets/icon/flags/monaco.png"));
    listCountryTC.add(const CountryTC("NC","New Caledonia","assets/icon/flags/new_caledonia.png"));
    listCountryTC.add(const CountryTC("SC","Seychelles","assets/icon/flags/seychelles.png"));
    listCountryTC.add(const CountryTC("TC","Turks and Caicos Islands","assets/icon/flags/turks_and_caicos_islands.png"));
    listCountryTC.add(const CountryTC("VC","Saint Vincent and The Grenadines","assets/icon/flags/saint_vincent_and_the_grenadines.png"));
    listCountryTC.add(const CountryTC("AD","Andorra","assets/icon/flags/andorra.png"));
    listCountryTC.add(const CountryTC("BD","Bangladesh","assets/icon/flags/bangladesh.png"));
    listCountryTC.add(const CountryTC("CD","Democratic Republic Of The Congo","assets/icon/flags/democratic_republic_of_the_congo.png"));
    listCountryTC.add(const CountryTC("GD","Grenada","assets/icon/flags/grenada.png"));
    listCountryTC.add(const CountryTC("ID","Indonesia","assets/icon/flags/indonesia.png"));
    listCountryTC.add(const CountryTC("MD","Moldova","assets/icon/flags/moldova.png"));
    listCountryTC.add(const CountryTC("SD","Sudan","assets/icon/flags/sudan.png"));
    listCountryTC.add(const CountryTC("TD","Chad","assets/icon/flags/chad.png"));
    listCountryTC.add(const CountryTC("AE","United Arab Emirates","assets/icon/flags/united_arab_emirates.png"));
    listCountryTC.add(const CountryTC("BE","Belgium","assets/icon/flags/belgium.png"));
    listCountryTC.add(const CountryTC("DE","Germany","assets/icon/flags/germany.png"));
    listCountryTC.add(const CountryTC("EE","Estonia","assets/icon/flags/estonia.png"));
    listCountryTC.add(const CountryTC("GE","Georgia","assets/icon/flags/georgia.png"));
    listCountryTC.add(const CountryTC("IE","Ireland","assets/icon/flags/ireland.png"));
    listCountryTC.add(const CountryTC("JE","Jersey","assets/icon/flags/jersey.png"));
    listCountryTC.add(const CountryTC("KE","Kenya","assets/icon/flags/kenya.png"));
    listCountryTC.add(const CountryTC("ME","Montenegro","assets/icon/flags/montenegro.png"));
    listCountryTC.add(const CountryTC("NE","Niger","assets/icon/flags/niger.png"));
    listCountryTC.add(const CountryTC("PE","Peru","assets/icon/flags/peru.png"));
    listCountryTC.add(const CountryTC("SE","Sweden","assets/icon/flags/sweden.png"));
    listCountryTC.add(const CountryTC("VE","Venezuela","assets/icon/flags/venezuela.png"));
    listCountryTC.add(const CountryTC("YE","Yemen","assets/icon/flags/yemen.png"));
    listCountryTC.add(const CountryTC("AF","Afghanistan","assets/icon/flags/afghanistan.png"));
    listCountryTC.add(const CountryTC("BF","Burkina Faso","assets/icon/flags/burkina_faso.png"));
    listCountryTC.add(const CountryTC("CF","Central African Republic","assets/icon/flags/central_african_republic.png"));
    listCountryTC.add(const CountryTC("MF","Saint Martin","assets/icon/flags/saint_martin.png"));
    listCountryTC.add(const CountryTC("NF","Norfolk Island","assets/icon/flags/norfolk_island.png"));
    listCountryTC.add(const CountryTC("PF","French Polynesia","assets/icon/flags/french_polynesia.png"));
    listCountryTC.add(const CountryTC("TF","French Southern Territories","assets/icon/flags/french_southern_territories.png"));
    listCountryTC.add(const CountryTC("WF","Wallis and Futuna","assets/icon/flags/wallis_and_futuna.png"));
    listCountryTC.add(const CountryTC("AG","Antigua and Barbuda","assets/icon/flags/antigua_and_barbuda.png"));
    listCountryTC.add(const CountryTC("BG","Bulgaria","assets/icon/flags/bulgaria.png"));
    listCountryTC.add(const CountryTC("CG","Republic of the Congo","assets/icon/flags/republic_of_the_congo.png"));
    listCountryTC.add(const CountryTC("EG","Egypt","assets/icon/flags/egypt.png"));
    listCountryTC.add(const CountryTC("GG","Guernsey","assets/icon/flags/guernsey.png"));
    listCountryTC.add(const CountryTC("KG","Kyrgyzstan","assets/icon/flags/kyrgyzstan.png"));
    listCountryTC.add(const CountryTC("MG","Madagascar","assets/icon/flags/madagascar.png"));
    listCountryTC.add(const CountryTC("NG","Nigeria","assets/icon/flags/nigeria.png"));
    listCountryTC.add(const CountryTC("PG","Papua New Guinea","assets/icon/flags/papua_new_guinea.png"));
    listCountryTC.add(const CountryTC("SG","Singapore","assets/icon/flags/singapore.png"));
    listCountryTC.add(const CountryTC("TG","Togo","assets/icon/flags/togo.png"));
    listCountryTC.add(const CountryTC("UG","Uganda","assets/icon/flags/uganda.png"));
    listCountryTC.add(const CountryTC("VG","British Virgin Islands","assets/icon/flags/british_virgin_islands.png"));
    listCountryTC.add(const CountryTC("BH","Bahrain","assets/icon/flags/bahrain.png"));
    listCountryTC.add(const CountryTC("CH","Switzerland","assets/icon/flags/switzerland.png"));
    listCountryTC.add(const CountryTC("EH","Western Sahara","assets/icon/flags/western_sahara.png"));
    listCountryTC.add(const CountryTC("GH","Ghana","assets/icon/flags/ghana.png"));
    listCountryTC.add(const CountryTC("KH","Cambodia","assets/icon/flags/cambodia.png"));
    listCountryTC.add(const CountryTC("MH","Marshall Islands","assets/icon/flags/marshall_islands.png"));
    listCountryTC.add(const CountryTC("PH","Philippines","assets/icon/flags/philippines.png"));
    listCountryTC.add(const CountryTC("SH","Saint Helena","assets/icon/flags/saint_helena.png"));
    listCountryTC.add(const CountryTC("TH","Thailand","assets/icon/flags/thailand.png"));
    listCountryTC.add(const CountryTC("AI","Anguilla","assets/icon/flags/anguilla.png"));
    listCountryTC.add(const CountryTC("BI","Burundi","assets/icon/flags/burundi.png"));
    listCountryTC.add(const CountryTC("CI","Cote Divoire","assets/icon/flags/cote_divoire.png"));
    listCountryTC.add(const CountryTC("FI","Finland","assets/icon/flags/finland.png"));
    listCountryTC.add(const CountryTC("GI","Gibraltar","assets/icon/flags/gibraltar.png"));
    listCountryTC.add(const CountryTC("KI","Kiribati","assets/icon/flags/kiribati.png"));
    listCountryTC.add(const CountryTC("LI","Liechtenstein","assets/icon/flags/liechtenstein.png"));
    listCountryTC.add(const CountryTC("NI","Nicaragua","assets/icon/flags/nicaragua.png"));
    listCountryTC.add(const CountryTC("SI","Slovenia","assets/icon/flags/slovenia.png"));
    listCountryTC.add(const CountryTC("VI","US Virgin Islands","assets/icon/flags/us_virgin_islands.png"));
    listCountryTC.add(const CountryTC("BJ","Benin","assets/icon/flags/benin.png"));
    listCountryTC.add(const CountryTC("DJ","Djibouti","assets/icon/flags/djibouti.png"));
    listCountryTC.add(const CountryTC("FJ","Fiji","assets/icon/flags/fiji.png"));
    listCountryTC.add(const CountryTC("TJ","Tajikistan","assets/icon/flags/tajikistan.png"));
    listCountryTC.add(const CountryTC("CK","Cook Islands","assets/icon/flags/cook_islands.png"));
    listCountryTC.add(const CountryTC("DK","Denmark","assets/icon/flags/denmark.png"));
    listCountryTC.add(const CountryTC("FK","Falkland Islands","assets/icon/flags/falkland_islands.png"));
    listCountryTC.add(const CountryTC("HK","Hong Kong","assets/icon/flags/hong_kong.png"));
    listCountryTC.add(const CountryTC("LK","Sri Lanka","assets/icon/flags/sri_lanka.png"));
    listCountryTC.add(const CountryTC("MK","Macedonia","assets/icon/flags/macedonia.png"));
    listCountryTC.add(const CountryTC("PK","Pakistan","assets/icon/flags/pakistan.png"));
    listCountryTC.add(const CountryTC("SK","Slovakia","assets/icon/flags/slovakia.png"));
    listCountryTC.add(const CountryTC("TK","Tokelau","assets/icon/flags/tokelau.png"));
    listCountryTC.add(const CountryTC("AL","Albania","assets/icon/flags/albania.png"));
    listCountryTC.add(const CountryTC("BL","Saint Barthelemy","assets/icon/flags/saint_barthelemy.png"));
    listCountryTC.add(const CountryTC("CL","Chile","assets/icon/flags/chile.png"));
    listCountryTC.add(const CountryTC("GL","Greenland","assets/icon/flags/greenland.png"));
    listCountryTC.add(const CountryTC("IL","Israel","assets/icon/flags/israel.png"));
    listCountryTC.add(const CountryTC("ML","Mali","assets/icon/flags/mali.png"));
    listCountryTC.add(const CountryTC("NL","Netherlands","assets/icon/flags/netherlands.png"));
    listCountryTC.add(const CountryTC("PL","Poland","assets/icon/flags/poland.png"));
    listCountryTC.add(const CountryTC("SL","Sierra Leone","assets/icon/flags/sierra_leone.png"));
    listCountryTC.add(const CountryTC("AM","Armenia","assets/icon/flags/armenia.png"));
    listCountryTC.add(const CountryTC("BM","Bermuda","assets/icon/flags/bermuda.png"));
    listCountryTC.add(const CountryTC("CM","Cameroon","assets/icon/flags/cameroon.png"));
    listCountryTC.add(const CountryTC("DM","Dominica","assets/icon/flags/dominica.png"));
    listCountryTC.add(const CountryTC("FM","Micronesia","assets/icon/flags/micronesia.png"));
    listCountryTC.add(const CountryTC("GM","Gambia","assets/icon/flags/gambia.png"));
    listCountryTC.add(const CountryTC("IM","Isle of Man","assets/icon/flags/isle_of_man.png"));
    listCountryTC.add(const CountryTC("JM","Jamaica","assets/icon/flags/jamaica.png"));
    listCountryTC.add(const CountryTC("KM","Comoros","assets/icon/flags/comoros.png"));
    listCountryTC.add(const CountryTC("MM","Myanmar","assets/icon/flags/myanmar.png"));
    listCountryTC.add(const CountryTC("OM","Oman","assets/icon/flags/oman.png"));
    listCountryTC.add(const CountryTC("SM","San Marino","assets/icon/flags/san_marino.png"));
    listCountryTC.add(const CountryTC("TM","Turkmenistan","assets/icon/flags/turkmenistan.png"));
    listCountryTC.add(const CountryTC("ZM","Zambia","assets/icon/flags/zambia.png"));
    listCountryTC.add(const CountryTC("BN","Brunei","assets/icon/flags/brunei.png"));
    listCountryTC.add(const CountryTC("CN","China","assets/icon/flags/china.png"));
    listCountryTC.add(const CountryTC("GN","Guinea","assets/icon/flags/guinea.png"));
    listCountryTC.add(const CountryTC("HN","Honduras","assets/icon/flags/honduras.png"));
    listCountryTC.add(const CountryTC("IN","India","assets/icon/flags/india.png"));
    listCountryTC.add(const CountryTC("KN","Saint Kitts and Nevis","assets/icon/flags/saint_kitts_and_nevis.png"));
    listCountryTC.add(const CountryTC("MN","Mongolia","assets/icon/flags/mongolia.png"));
    listCountryTC.add(const CountryTC("PN","Pitcairn Islands","assets/icon/flags/pitcairn_islands.png"));
    listCountryTC.add(const CountryTC("SN","Senegal","assets/icon/flags/senegal.png"));
    listCountryTC.add(const CountryTC("TN","Tunisia","assets/icon/flags/tunisia.png"));
    listCountryTC.add(const CountryTC("VN","Vietnam","assets/icon/flags/vietnam.png"));
    listCountryTC.add(const CountryTC("AO","Angola","assets/icon/flags/angola.png"));
    listCountryTC.add(const CountryTC("BO","Bolivia","assets/icon/flags/bolivia.png"));
    listCountryTC.add(const CountryTC("CO","Colombia","assets/icon/flags/colombia.png"));
    listCountryTC.add(const CountryTC("DO","Dominican Republic","assets/icon/flags/dominican_republic.png"));
    listCountryTC.add(const CountryTC("JO","Jordan","assets/icon/flags/jordan.png"));
    listCountryTC.add(const CountryTC("MO","Macau","assets/icon/flags/macau.png"));
    listCountryTC.add(const CountryTC("NO","Norway","assets/icon/flags/norway.png"));
    listCountryTC.add(const CountryTC("RO","Romania","assets/icon/flags/romania.png"));
    listCountryTC.add(const CountryTC("SO","Somalia","assets/icon/flags/somalia.png"));
    listCountryTC.add(const CountryTC("TO","Tonga","assets/icon/flags/tonga.png"));
    listCountryTC.add(const CountryTC("JP","Japan","assets/icon/flags/japan.png"));
    listCountryTC.add(const CountryTC("KP","North Korea","assets/icon/flags/north_korea.png"));
    listCountryTC.add(const CountryTC("MP","Northern Mariana Islands","assets/icon/flags/northern_mariana_islands.png"));
    listCountryTC.add(const CountryTC("NP","Nepal","assets/icon/flags/nepal.png"));
    listCountryTC.add(const CountryTC("AQ","Antarctica","assets/icon/flags/antarctica.png"));
    listCountryTC.add(const CountryTC("GQ","Equatorial Guinea","assets/icon/flags/equatorial_guinea.png"));
    listCountryTC.add(const CountryTC("IQ","Iraq","assets/icon/flags/iraq.png"));
    listCountryTC.add(const CountryTC("MQ","Martinique","assets/icon/flags/martinique.png"));
    listCountryTC.add(const CountryTC("AR","Argentina","assets/icon/flags/argentina.png"));
    listCountryTC.add(const CountryTC("BR","Brazil","assets/icon/flags/brazil.png"));
    listCountryTC.add(const CountryTC("CR","Costa Rica","assets/icon/flags/costa_rica.png"));
    listCountryTC.add(const CountryTC("ER","Eritrea","assets/icon/flags/eritrea.png"));
    listCountryTC.add(const CountryTC("FR","France","assets/icon/flags/france.png"));
    listCountryTC.add(const CountryTC("GR","Greece","assets/icon/flags/greece.png"));
    listCountryTC.add(const CountryTC("HR","Croatia","assets/icon/flags/croatia.png"));
    listCountryTC.add(const CountryTC("IR","Iran","assets/icon/flags/iran.png"));
    listCountryTC.add(const CountryTC("KR","South Korea","assets/icon/flags/south_korea.png"));
    listCountryTC.add(const CountryTC("LR","Liberia","assets/icon/flags/liberia.png"));
    listCountryTC.add(const CountryTC("MR","Mauritania","assets/icon/flags/mauritania.png"));
    listCountryTC.add(const CountryTC("NR","Nauru","assets/icon/flags/nauru.png"));
    listCountryTC.add(const CountryTC("PR","Puerto Rico","assets/icon/flags/puerto_rico.png"));
    listCountryTC.add(const CountryTC("SR","Suriname","assets/icon/flags/suriname.png"));
    listCountryTC.add(const CountryTC("TR","Turkey","assets/icon/flags/turkey.png"));
    listCountryTC.add(const CountryTC("AS","American Samoa","assets/icon/flags/american_samoa.png"));
    listCountryTC.add(const CountryTC("BS","Bahamas","assets/icon/flags/bahamas.png"));
    listCountryTC.add(const CountryTC("ES","Spain","assets/icon/flags/spain.png"));
    listCountryTC.add(const CountryTC("IS","Iceland","assets/icon/flags/iceland.png"));
    listCountryTC.add(const CountryTC("LS","Lesotho","assets/icon/flags/lesotho.png"));
    listCountryTC.add(const CountryTC("MS","Montserrat","assets/icon/flags/montserrat.png"));
    listCountryTC.add(const CountryTC("RS","Serbia","assets/icon/flags/serbia.png"));
    listCountryTC.add(const CountryTC("US","United States","assets/icon/flags/united_states.png"));
    listCountryTC.add(const CountryTC("WS","Samoa","assets/icon/flags/samoa.png"));
    listCountryTC.add(const CountryTC("AT","Austria","assets/icon/flags/austria.png"));
    listCountryTC.add(const CountryTC("ET","Ethiopia","assets/icon/flags/ethiopia.png"));
    listCountryTC.add(const CountryTC("GT","Guatemala","assets/icon/flags/guatemala.png"));
    listCountryTC.add(const CountryTC("HT","Haiti","assets/icon/flags/haiti.png"));
    listCountryTC.add(const CountryTC("IT","Italy","assets/icon/flags/italy.png"));
    listCountryTC.add(const CountryTC("LT","Lithuania","assets/icon/flags/lithuania.png"));
    listCountryTC.add(const CountryTC("MT","Malta","assets/icon/flags/malta.png"));
    listCountryTC.add(const CountryTC("PT","Portugal","assets/icon/flags/portugal.png"));
    listCountryTC.add(const CountryTC("AU","Australia","assets/icon/flags/australia.png"));
    listCountryTC.add(const CountryTC("CU","Cuba","assets/icon/flags/cuba.png"));
    listCountryTC.add(const CountryTC("EU","European Union","assets/icon/flags/european_union.png"));
    listCountryTC.add(const CountryTC("GU","Guam","assets/icon/flags/guam.png"));
    listCountryTC.add(const CountryTC("HU","Hungary","assets/icon/flags/hungary.png"));
    listCountryTC.add(const CountryTC("LU","Luxembourg","assets/icon/flags/luxembourg.png"));
    listCountryTC.add(const CountryTC("MU","Mauritius","assets/icon/flags/mauritius.png"));
    listCountryTC.add(const CountryTC("NU","Niue","assets/icon/flags/niue.png"));
    listCountryTC.add(const CountryTC("RU","Russia","assets/icon/flags/russia.png"));
    listCountryTC.add(const CountryTC("VU","Vanuatu","assets/icon/flags/vanuatu.png"));
    listCountryTC.add(const CountryTC("LV","Latvia","assets/icon/flags/latvia.png"));
    listCountryTC.add(const CountryTC("MV","Maldives","assets/icon/flags/maldives.png"));
    listCountryTC.add(const CountryTC("PW","Palau","assets/icon/flags/palau.png"));
    listCountryTC.add(const CountryTC("TW","Taiwan","assets/icon/flags/taiwan.png"));
    listCountryTC.add(const CountryTC("ZW","Zimbabwe","assets/icon/flags/zimbabwe.png"));
    listCountryTC.add(const CountryTC("MX","Mexico","assets/icon/flags/mexico.png"));
    listCountryTC.add(const CountryTC("BY","Belarus","assets/icon/flags/belarus.png"));
    listCountryTC.add(const CountryTC("CY","Cyprus","assets/icon/flags/cyprus.png"));
    listCountryTC.add(const CountryTC("LY","Libya","assets/icon/flags/libya.png"));
    listCountryTC.add(const CountryTC("MY","Malaysia","assets/icon/flags/malaysia.png"));
    listCountryTC.add(const CountryTC("UY","Uruguay","assets/icon/flags/uruguay.png"));
    listCountryTC.add(const CountryTC("AZ","Azerbaijan","assets/icon/flags/azerbaijan.png"));
    listCountryTC.add(const CountryTC("BZ","Belize","assets/icon/flags/belize.png"));
    listCountryTC.add(const CountryTC("CZ","Czech Republic","assets/icon/flags/czech_republic.png"));
    listCountryTC.add(const CountryTC("DZ","Algeria","assets/icon/flags/algeria.png"));
    listCountryTC.add(const CountryTC("KZ","Kazakhstan","assets/icon/flags/kazakhstan.png"));
    listCountryTC.add(const CountryTC("MZ","Mozambique","assets/icon/flags/mozambique.png"));
    listCountryTC.add(const CountryTC("NZ","New Zealand","assets/icon/flags/new_zealand.png"));
    listCountryTC.add(const CountryTC("SZ","Swaziland","assets/icon/flags/swaziland.png"));
    listCountryTC.add(const CountryTC("TZ","Tanzania","assets/icon/flags/tanzania.png"));
    listCountryTC.add(const CountryTC("UZ","Uzbekistan","assets/icon/flags/uzbekistan.png"));
    return ListCountryTC(listCountryTC);
  }

  static ListInitStream<InitStream> get getListInitStream {
    final listInitStream = List<InitStream>.empty(growable: true);
    listInitStream.add(InitStream(KeysNameStreamToInitStreamUtility.appViewModelQQStringsUniqueIdByUser,false));
    listInitStream.add(InitStream(KeysNameStreamToInitStreamUtility.appViewModelQQThoseWorks,false));
    listInitStream.add(InitStream(KeysNameStreamToInitStreamUtility.appViewModelQQTOPDBDVersionWeb,false));
    return ListInitStream<InitStream>(listInitStream);
  }
}