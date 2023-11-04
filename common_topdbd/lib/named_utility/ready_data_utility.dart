import 'package:common_topdbd/model/country_rd/country_rd.dart';
import 'package:common_topdbd/model/country_rd/list_country_rd.dart';
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

  static ListCountryRD<CountryRD> get getListCountryRD {
    final listCountryTC = List<CountryRD>.empty(growable: true);
    listCountryTC.add(const CountryRD("BA","Bosnia and Herzegovina","assets/icon/flags/bosnia_and_herzegovina.png"));
    listCountryTC.add(const CountryRD("CA","Canada","assets/icon/flags/canada.png"));
    listCountryTC.add(const CountryRD("GA","Gabon","assets/icon/flags/gabon.png"));
    listCountryTC.add(const CountryRD("LA","Laos","assets/icon/flags/laos.png"));
    listCountryTC.add(const CountryRD("MA","Morocco","assets/icon/flags/morocco.png"));
    listCountryTC.add(const CountryRD("NA","Namibia","assets/icon/flags/namibia.png"));
    listCountryTC.add(const CountryRD("PA","Panama","assets/icon/flags/panama.png"));
    listCountryTC.add(const CountryRD("QA","Qatar","assets/icon/flags/qatar.png"));
    listCountryTC.add(const CountryRD("SA","Saudi Arabia","assets/icon/flags/saudi_arabia.png"));
    listCountryTC.add(const CountryRD("UA","Ukraine","assets/icon/flags/ukraine.png"));
    listCountryTC.add(const CountryRD("VA","Vatican City","assets/icon/flags/vatican_city.png"));
    listCountryTC.add(const CountryRD("ZA","South Africa","assets/icon/flags/south_africa.png"));
    listCountryTC.add(const CountryRD("BB","Barbados","assets/icon/flags/barbados.png"));
    listCountryTC.add(const CountryRD("GB","United Kingdom","assets/icon/flags/united_kingdom.png"));
    listCountryTC.add(const CountryRD("LB","Lebanon","assets/icon/flags/lebanon.png"));
    listCountryTC.add(const CountryRD("SB","Solomon Islands","assets/icon/flags/solomon_islands.png"));
    listCountryTC.add(const CountryRD("CC","Cocos Keeling Islands","assets/icon/flags/cocos_keeling_islands.png"));
    listCountryTC.add(const CountryRD("EC","Ecuador","assets/icon/flags/ecuador.png"));
    listCountryTC.add(const CountryRD("IC","Canary Islands","assets/icon/flags/canary_islands.png"));
    listCountryTC.add(const CountryRD("LC","Saint Lucia","assets/icon/flags/saint_lucia.png"));
    listCountryTC.add(const CountryRD("MC","Monaco","assets/icon/flags/monaco.png"));
    listCountryTC.add(const CountryRD("NC","New Caledonia","assets/icon/flags/new_caledonia.png"));
    listCountryTC.add(const CountryRD("SC","Seychelles","assets/icon/flags/seychelles.png"));
    listCountryTC.add(const CountryRD("TC","Turks and Caicos Islands","assets/icon/flags/turks_and_caicos_islands.png"));
    listCountryTC.add(const CountryRD("VC","Saint Vincent and The Grenadines","assets/icon/flags/saint_vincent_and_the_grenadines.png"));
    listCountryTC.add(const CountryRD("AD","Andorra","assets/icon/flags/andorra.png"));
    listCountryTC.add(const CountryRD("BD","Bangladesh","assets/icon/flags/bangladesh.png"));
    listCountryTC.add(const CountryRD("CD","Democratic Republic Of The Congo","assets/icon/flags/democratic_republic_of_the_congo.png"));
    listCountryTC.add(const CountryRD("GD","Grenada","assets/icon/flags/grenada.png"));
    listCountryTC.add(const CountryRD("ID","Indonesia","assets/icon/flags/indonesia.png"));
    listCountryTC.add(const CountryRD("MD","Moldova","assets/icon/flags/moldova.png"));
    listCountryTC.add(const CountryRD("SD","Sudan","assets/icon/flags/sudan.png"));
    listCountryTC.add(const CountryRD("TD","Chad","assets/icon/flags/chad.png"));
    listCountryTC.add(const CountryRD("AE","United Arab Emirates","assets/icon/flags/united_arab_emirates.png"));
    listCountryTC.add(const CountryRD("BE","Belgium","assets/icon/flags/belgium.png"));
    listCountryTC.add(const CountryRD("DE","Germany","assets/icon/flags/germany.png"));
    listCountryTC.add(const CountryRD("EE","Estonia","assets/icon/flags/estonia.png"));
    listCountryTC.add(const CountryRD("GE","Georgia","assets/icon/flags/georgia.png"));
    listCountryTC.add(const CountryRD("IE","Ireland","assets/icon/flags/ireland.png"));
    listCountryTC.add(const CountryRD("JE","Jersey","assets/icon/flags/jersey.png"));
    listCountryTC.add(const CountryRD("KE","Kenya","assets/icon/flags/kenya.png"));
    listCountryTC.add(const CountryRD("ME","Montenegro","assets/icon/flags/montenegro.png"));
    listCountryTC.add(const CountryRD("NE","Niger","assets/icon/flags/niger.png"));
    listCountryTC.add(const CountryRD("PE","Peru","assets/icon/flags/peru.png"));
    listCountryTC.add(const CountryRD("SE","Sweden","assets/icon/flags/sweden.png"));
    listCountryTC.add(const CountryRD("VE","Venezuela","assets/icon/flags/venezuela.png"));
    listCountryTC.add(const CountryRD("YE","Yemen","assets/icon/flags/yemen.png"));
    listCountryTC.add(const CountryRD("AF","Afghanistan","assets/icon/flags/afghanistan.png"));
    listCountryTC.add(const CountryRD("BF","Burkina Faso","assets/icon/flags/burkina_faso.png"));
    listCountryTC.add(const CountryRD("CF","Central African Republic","assets/icon/flags/central_african_republic.png"));
    listCountryTC.add(const CountryRD("MF","Saint Martin","assets/icon/flags/saint_martin.png"));
    listCountryTC.add(const CountryRD("NF","Norfolk Island","assets/icon/flags/norfolk_island.png"));
    listCountryTC.add(const CountryRD("PF","French Polynesia","assets/icon/flags/french_polynesia.png"));
    listCountryTC.add(const CountryRD("TF","French Southern Territories","assets/icon/flags/french_southern_territories.png"));
    listCountryTC.add(const CountryRD("WF","Wallis and Futuna","assets/icon/flags/wallis_and_futuna.png"));
    listCountryTC.add(const CountryRD("AG","Antigua and Barbuda","assets/icon/flags/antigua_and_barbuda.png"));
    listCountryTC.add(const CountryRD("BG","Bulgaria","assets/icon/flags/bulgaria.png"));
    listCountryTC.add(const CountryRD("CG","Republic of the Congo","assets/icon/flags/republic_of_the_congo.png"));
    listCountryTC.add(const CountryRD("EG","Egypt","assets/icon/flags/egypt.png"));
    listCountryTC.add(const CountryRD("GG","Guernsey","assets/icon/flags/guernsey.png"));
    listCountryTC.add(const CountryRD("KG","Kyrgyzstan","assets/icon/flags/kyrgyzstan.png"));
    listCountryTC.add(const CountryRD("MG","Madagascar","assets/icon/flags/madagascar.png"));
    listCountryTC.add(const CountryRD("NG","Nigeria","assets/icon/flags/nigeria.png"));
    listCountryTC.add(const CountryRD("PG","Papua New Guinea","assets/icon/flags/papua_new_guinea.png"));
    listCountryTC.add(const CountryRD("SG","Singapore","assets/icon/flags/singapore.png"));
    listCountryTC.add(const CountryRD("TG","Togo","assets/icon/flags/togo.png"));
    listCountryTC.add(const CountryRD("UG","Uganda","assets/icon/flags/uganda.png"));
    listCountryTC.add(const CountryRD("VG","British Virgin Islands","assets/icon/flags/british_virgin_islands.png"));
    listCountryTC.add(const CountryRD("BH","Bahrain","assets/icon/flags/bahrain.png"));
    listCountryTC.add(const CountryRD("CH","Switzerland","assets/icon/flags/switzerland.png"));
    listCountryTC.add(const CountryRD("EH","Western Sahara","assets/icon/flags/western_sahara.png"));
    listCountryTC.add(const CountryRD("GH","Ghana","assets/icon/flags/ghana.png"));
    listCountryTC.add(const CountryRD("KH","Cambodia","assets/icon/flags/cambodia.png"));
    listCountryTC.add(const CountryRD("MH","Marshall Islands","assets/icon/flags/marshall_islands.png"));
    listCountryTC.add(const CountryRD("PH","Philippines","assets/icon/flags/philippines.png"));
    listCountryTC.add(const CountryRD("SH","Saint Helena","assets/icon/flags/saint_helena.png"));
    listCountryTC.add(const CountryRD("TH","Thailand","assets/icon/flags/thailand.png"));
    listCountryTC.add(const CountryRD("AI","Anguilla","assets/icon/flags/anguilla.png"));
    listCountryTC.add(const CountryRD("BI","Burundi","assets/icon/flags/burundi.png"));
    listCountryTC.add(const CountryRD("CI","Cote Divoire","assets/icon/flags/cote_divoire.png"));
    listCountryTC.add(const CountryRD("FI","Finland","assets/icon/flags/finland.png"));
    listCountryTC.add(const CountryRD("GI","Gibraltar","assets/icon/flags/gibraltar.png"));
    listCountryTC.add(const CountryRD("KI","Kiribati","assets/icon/flags/kiribati.png"));
    listCountryTC.add(const CountryRD("LI","Liechtenstein","assets/icon/flags/liechtenstein.png"));
    listCountryTC.add(const CountryRD("NI","Nicaragua","assets/icon/flags/nicaragua.png"));
    listCountryTC.add(const CountryRD("SI","Slovenia","assets/icon/flags/slovenia.png"));
    listCountryTC.add(const CountryRD("VI","US Virgin Islands","assets/icon/flags/us_virgin_islands.png"));
    listCountryTC.add(const CountryRD("BJ","Benin","assets/icon/flags/benin.png"));
    listCountryTC.add(const CountryRD("DJ","Djibouti","assets/icon/flags/djibouti.png"));
    listCountryTC.add(const CountryRD("FJ","Fiji","assets/icon/flags/fiji.png"));
    listCountryTC.add(const CountryRD("TJ","Tajikistan","assets/icon/flags/tajikistan.png"));
    listCountryTC.add(const CountryRD("CK","Cook Islands","assets/icon/flags/cook_islands.png"));
    listCountryTC.add(const CountryRD("DK","Denmark","assets/icon/flags/denmark.png"));
    listCountryTC.add(const CountryRD("FK","Falkland Islands","assets/icon/flags/falkland_islands.png"));
    listCountryTC.add(const CountryRD("HK","Hong Kong","assets/icon/flags/hong_kong.png"));
    listCountryTC.add(const CountryRD("LK","Sri Lanka","assets/icon/flags/sri_lanka.png"));
    listCountryTC.add(const CountryRD("MK","Macedonia","assets/icon/flags/macedonia.png"));
    listCountryTC.add(const CountryRD("PK","Pakistan","assets/icon/flags/pakistan.png"));
    listCountryTC.add(const CountryRD("SK","Slovakia","assets/icon/flags/slovakia.png"));
    listCountryTC.add(const CountryRD("TK","Tokelau","assets/icon/flags/tokelau.png"));
    listCountryTC.add(const CountryRD("AL","Albania","assets/icon/flags/albania.png"));
    listCountryTC.add(const CountryRD("BL","Saint Barthelemy","assets/icon/flags/saint_barthelemy.png"));
    listCountryTC.add(const CountryRD("CL","Chile","assets/icon/flags/chile.png"));
    listCountryTC.add(const CountryRD("GL","Greenland","assets/icon/flags/greenland.png"));
    listCountryTC.add(const CountryRD("IL","Israel","assets/icon/flags/israel.png"));
    listCountryTC.add(const CountryRD("ML","Mali","assets/icon/flags/mali.png"));
    listCountryTC.add(const CountryRD("NL","Netherlands","assets/icon/flags/netherlands.png"));
    listCountryTC.add(const CountryRD("PL","Poland","assets/icon/flags/poland.png"));
    listCountryTC.add(const CountryRD("SL","Sierra Leone","assets/icon/flags/sierra_leone.png"));
    listCountryTC.add(const CountryRD("AM","Armenia","assets/icon/flags/armenia.png"));
    listCountryTC.add(const CountryRD("BM","Bermuda","assets/icon/flags/bermuda.png"));
    listCountryTC.add(const CountryRD("CM","Cameroon","assets/icon/flags/cameroon.png"));
    listCountryTC.add(const CountryRD("DM","Dominica","assets/icon/flags/dominica.png"));
    listCountryTC.add(const CountryRD("FM","Micronesia","assets/icon/flags/micronesia.png"));
    listCountryTC.add(const CountryRD("GM","Gambia","assets/icon/flags/gambia.png"));
    listCountryTC.add(const CountryRD("IM","Isle of Man","assets/icon/flags/isle_of_man.png"));
    listCountryTC.add(const CountryRD("JM","Jamaica","assets/icon/flags/jamaica.png"));
    listCountryTC.add(const CountryRD("KM","Comoros","assets/icon/flags/comoros.png"));
    listCountryTC.add(const CountryRD("MM","Myanmar","assets/icon/flags/myanmar.png"));
    listCountryTC.add(const CountryRD("OM","Oman","assets/icon/flags/oman.png"));
    listCountryTC.add(const CountryRD("SM","San Marino","assets/icon/flags/san_marino.png"));
    listCountryTC.add(const CountryRD("TM","Turkmenistan","assets/icon/flags/turkmenistan.png"));
    listCountryTC.add(const CountryRD("ZM","Zambia","assets/icon/flags/zambia.png"));
    listCountryTC.add(const CountryRD("BN","Brunei","assets/icon/flags/brunei.png"));
    listCountryTC.add(const CountryRD("CN","China","assets/icon/flags/china.png"));
    listCountryTC.add(const CountryRD("GN","Guinea","assets/icon/flags/guinea.png"));
    listCountryTC.add(const CountryRD("HN","Honduras","assets/icon/flags/honduras.png"));
    listCountryTC.add(const CountryRD("IN","India","assets/icon/flags/india.png"));
    listCountryTC.add(const CountryRD("KN","Saint Kitts and Nevis","assets/icon/flags/saint_kitts_and_nevis.png"));
    listCountryTC.add(const CountryRD("MN","Mongolia","assets/icon/flags/mongolia.png"));
    listCountryTC.add(const CountryRD("PN","Pitcairn Islands","assets/icon/flags/pitcairn_islands.png"));
    listCountryTC.add(const CountryRD("SN","Senegal","assets/icon/flags/senegal.png"));
    listCountryTC.add(const CountryRD("TN","Tunisia","assets/icon/flags/tunisia.png"));
    listCountryTC.add(const CountryRD("VN","Vietnam","assets/icon/flags/vietnam.png"));
    listCountryTC.add(const CountryRD("AO","Angola","assets/icon/flags/angola.png"));
    listCountryTC.add(const CountryRD("BO","Bolivia","assets/icon/flags/bolivia.png"));
    listCountryTC.add(const CountryRD("CO","Colombia","assets/icon/flags/colombia.png"));
    listCountryTC.add(const CountryRD("DO","Dominican Republic","assets/icon/flags/dominican_republic.png"));
    listCountryTC.add(const CountryRD("JO","Jordan","assets/icon/flags/jordan.png"));
    listCountryTC.add(const CountryRD("MO","Macau","assets/icon/flags/macau.png"));
    listCountryTC.add(const CountryRD("NO","Norway","assets/icon/flags/norway.png"));
    listCountryTC.add(const CountryRD("RO","Romania","assets/icon/flags/romania.png"));
    listCountryTC.add(const CountryRD("SO","Somalia","assets/icon/flags/somalia.png"));
    listCountryTC.add(const CountryRD("TO","Tonga","assets/icon/flags/tonga.png"));
    listCountryTC.add(const CountryRD("JP","Japan","assets/icon/flags/japan.png"));
    listCountryTC.add(const CountryRD("KP","North Korea","assets/icon/flags/north_korea.png"));
    listCountryTC.add(const CountryRD("MP","Northern Mariana Islands","assets/icon/flags/northern_mariana_islands.png"));
    listCountryTC.add(const CountryRD("NP","Nepal","assets/icon/flags/nepal.png"));
    listCountryTC.add(const CountryRD("AQ","Antarctica","assets/icon/flags/antarctica.png"));
    listCountryTC.add(const CountryRD("GQ","Equatorial Guinea","assets/icon/flags/equatorial_guinea.png"));
    listCountryTC.add(const CountryRD("IQ","Iraq","assets/icon/flags/iraq.png"));
    listCountryTC.add(const CountryRD("MQ","Martinique","assets/icon/flags/martinique.png"));
    listCountryTC.add(const CountryRD("AR","Argentina","assets/icon/flags/argentina.png"));
    listCountryTC.add(const CountryRD("BR","Brazil","assets/icon/flags/brazil.png"));
    listCountryTC.add(const CountryRD("CR","Costa Rica","assets/icon/flags/costa_rica.png"));
    listCountryTC.add(const CountryRD("ER","Eritrea","assets/icon/flags/eritrea.png"));
    listCountryTC.add(const CountryRD("FR","France","assets/icon/flags/france.png"));
    listCountryTC.add(const CountryRD("GR","Greece","assets/icon/flags/greece.png"));
    listCountryTC.add(const CountryRD("HR","Croatia","assets/icon/flags/croatia.png"));
    listCountryTC.add(const CountryRD("IR","Iran","assets/icon/flags/iran.png"));
    listCountryTC.add(const CountryRD("KR","South Korea","assets/icon/flags/south_korea.png"));
    listCountryTC.add(const CountryRD("LR","Liberia","assets/icon/flags/liberia.png"));
    listCountryTC.add(const CountryRD("MR","Mauritania","assets/icon/flags/mauritania.png"));
    listCountryTC.add(const CountryRD("NR","Nauru","assets/icon/flags/nauru.png"));
    listCountryTC.add(const CountryRD("PR","Puerto Rico","assets/icon/flags/puerto_rico.png"));
    listCountryTC.add(const CountryRD("SR","Suriname","assets/icon/flags/suriname.png"));
    listCountryTC.add(const CountryRD("TR","Turkey","assets/icon/flags/turkey.png"));
    listCountryTC.add(const CountryRD("AS","American Samoa","assets/icon/flags/american_samoa.png"));
    listCountryTC.add(const CountryRD("BS","Bahamas","assets/icon/flags/bahamas.png"));
    listCountryTC.add(const CountryRD("ES","Spain","assets/icon/flags/spain.png"));
    listCountryTC.add(const CountryRD("IS","Iceland","assets/icon/flags/iceland.png"));
    listCountryTC.add(const CountryRD("LS","Lesotho","assets/icon/flags/lesotho.png"));
    listCountryTC.add(const CountryRD("MS","Montserrat","assets/icon/flags/montserrat.png"));
    listCountryTC.add(const CountryRD("RS","Serbia","assets/icon/flags/serbia.png"));
    listCountryTC.add(const CountryRD("US","United States","assets/icon/flags/united_states.png"));
    listCountryTC.add(const CountryRD("WS","Samoa","assets/icon/flags/samoa.png"));
    listCountryTC.add(const CountryRD("AT","Austria","assets/icon/flags/austria.png"));
    listCountryTC.add(const CountryRD("ET","Ethiopia","assets/icon/flags/ethiopia.png"));
    listCountryTC.add(const CountryRD("GT","Guatemala","assets/icon/flags/guatemala.png"));
    listCountryTC.add(const CountryRD("HT","Haiti","assets/icon/flags/haiti.png"));
    listCountryTC.add(const CountryRD("IT","Italy","assets/icon/flags/italy.png"));
    listCountryTC.add(const CountryRD("LT","Lithuania","assets/icon/flags/lithuania.png"));
    listCountryTC.add(const CountryRD("MT","Malta","assets/icon/flags/malta.png"));
    listCountryTC.add(const CountryRD("PT","Portugal","assets/icon/flags/portugal.png"));
    listCountryTC.add(const CountryRD("AU","Australia","assets/icon/flags/australia.png"));
    listCountryTC.add(const CountryRD("CU","Cuba","assets/icon/flags/cuba.png"));
    listCountryTC.add(const CountryRD("EU","European Union","assets/icon/flags/european_union.png"));
    listCountryTC.add(const CountryRD("GU","Guam","assets/icon/flags/guam.png"));
    listCountryTC.add(const CountryRD("HU","Hungary","assets/icon/flags/hungary.png"));
    listCountryTC.add(const CountryRD("LU","Luxembourg","assets/icon/flags/luxembourg.png"));
    listCountryTC.add(const CountryRD("MU","Mauritius","assets/icon/flags/mauritius.png"));
    listCountryTC.add(const CountryRD("NU","Niue","assets/icon/flags/niue.png"));
    listCountryTC.add(const CountryRD("RU","Russia","assets/icon/flags/russia.png"));
    listCountryTC.add(const CountryRD("VU","Vanuatu","assets/icon/flags/vanuatu.png"));
    listCountryTC.add(const CountryRD("LV","Latvia","assets/icon/flags/latvia.png"));
    listCountryTC.add(const CountryRD("MV","Maldives","assets/icon/flags/maldives.png"));
    listCountryTC.add(const CountryRD("PW","Palau","assets/icon/flags/palau.png"));
    listCountryTC.add(const CountryRD("TW","Taiwan","assets/icon/flags/taiwan.png"));
    listCountryTC.add(const CountryRD("ZW","Zimbabwe","assets/icon/flags/zimbabwe.png"));
    listCountryTC.add(const CountryRD("MX","Mexico","assets/icon/flags/mexico.png"));
    listCountryTC.add(const CountryRD("BY","Belarus","assets/icon/flags/belarus.png"));
    listCountryTC.add(const CountryRD("CY","Cyprus","assets/icon/flags/cyprus.png"));
    listCountryTC.add(const CountryRD("LY","Libya","assets/icon/flags/libya.png"));
    listCountryTC.add(const CountryRD("MY","Malaysia","assets/icon/flags/malaysia.png"));
    listCountryTC.add(const CountryRD("UY","Uruguay","assets/icon/flags/uruguay.png"));
    listCountryTC.add(const CountryRD("AZ","Azerbaijan","assets/icon/flags/azerbaijan.png"));
    listCountryTC.add(const CountryRD("BZ","Belize","assets/icon/flags/belize.png"));
    listCountryTC.add(const CountryRD("CZ","Czech Republic","assets/icon/flags/czech_republic.png"));
    listCountryTC.add(const CountryRD("DZ","Algeria","assets/icon/flags/algeria.png"));
    listCountryTC.add(const CountryRD("KZ","Kazakhstan","assets/icon/flags/kazakhstan.png"));
    listCountryTC.add(const CountryRD("MZ","Mozambique","assets/icon/flags/mozambique.png"));
    listCountryTC.add(const CountryRD("NZ","New Zealand","assets/icon/flags/new_zealand.png"));
    listCountryTC.add(const CountryRD("SZ","Swaziland","assets/icon/flags/swaziland.png"));
    listCountryTC.add(const CountryRD("TZ","Tanzania","assets/icon/flags/tanzania.png"));
    listCountryTC.add(const CountryRD("UZ","Uzbekistan","assets/icon/flags/uzbekistan.png"));
    return ListCountryRD(listCountryTC);
  }

  static ListInitStream<InitStream> get getListInitStream {
    final listInitStream = List<InitStream>.empty(growable: true);
    listInitStream.add(InitStream(KeysNameStreamToInitStreamUtility.appViewModelQQStringsUniqueIdByUser,false));
    listInitStream.add(InitStream(KeysNameStreamToInitStreamUtility.appViewModelQQThoseWorks,false));
    listInitStream.add(InitStream(KeysNameStreamToInitStreamUtility.appViewModelQQTOPDBDVersionWeb,false));
    return ListInitStream<InitStream>(listInitStream);
  }
}