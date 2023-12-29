import 'package:common_topdbd/model/country_rd/country_rd.dart';
import 'package:common_topdbd/model/country_rd/list_country_rd.dart';
import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/perk/perk.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:meta/meta.dart';

@immutable
final class ReadyDataUtility {
  const ReadyDataUtility._();

  static ListManiac<Maniac> get getListManiac {
    final listManiac = List<Maniac>.empty(growable: true);
    listManiac.add(const Maniac("Huntress", "assets/icon/dbd/maniac/maniac_huntress.png"));
    listManiac.add(const Maniac("Hillbilly", "assets/icon/dbd/maniac/maniac_hillbilly.png"));
    listManiac.add(const Maniac("Cannibal", "assets/icon/dbd/maniac/maniac_cannibal.png"));
    listManiac.add(const Maniac("Demogorgon", "assets/icon/dbd/maniac/maniac_demogorgon.png"));
    listManiac.add(const Maniac("Doctor", "assets/icon/dbd/maniac/maniac_doctor.png"));
    listManiac.add(const Maniac("Wraith", "assets/icon/dbd/maniac/maniac_wraith.png"));
    listManiac.add(const Maniac("Blight", "assets/icon/dbd/maniac/maniac_blight.png"));
    listManiac.add(const Maniac("Nurse", "assets/icon/dbd/maniac/maniac_nurse.png"));
    listManiac.add(const Maniac("Trapper", "assets/icon/dbd/maniac/maniac_trapper.png"));
    listManiac.add(const Maniac("Mastermind", "assets/icon/dbd/maniac/maniac_mastermind.png"));
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
    listManiacPerk.add(ManiacPerk(Perk("Bamboozle","assets/icon/dbd/maniac_perk/maniac_perk_bamboozle.png")));
    listManiacPerk.add(ManiacPerk(Perk("Brutal Strength","assets/icon/dbd/maniac_perk/maniac_perk_brutal_strength.png")));
    return ListManiacPerk(listManiacPerk);
  }

  static ListSurvivorPerk<SurvivorPerk> get getListSurvivorPerk {
    final listSurvivorPerk = List<SurvivorPerk>.empty(growable: true);
    listSurvivorPerk.add(SurvivorPerk(Perk("Lithe","assets/icon/dbd/survivor_perk/survivor_perk_lithe.png")));
    listSurvivorPerk.add(SurvivorPerk(Perk("Balanced Landing","assets/icon/dbd/survivor_perk/survivor_perk_balanced_landing.png")));
    listSurvivorPerk.add(SurvivorPerk(Perk("Sprint Burst","assets/icon/dbd/survivor_perk/survivor_perk_sprint_burst.png")));
    return ListSurvivorPerk(listSurvivorPerk);
  }

  static ListCountryRD<CountryRD> get getListCountryRD {
    final listCountryRD = List<CountryRD>.empty(growable: true);
    listCountryRD.add(const CountryRD("BA","Bosnia and Herzegovina","assets/icon/flags/bosnia_and_herzegovina.png"));
    listCountryRD.add(const CountryRD("CA","Canada","assets/icon/flags/canada.png"));
    listCountryRD.add(const CountryRD("GA","Gabon","assets/icon/flags/gabon.png"));
    listCountryRD.add(const CountryRD("LA","Laos","assets/icon/flags/laos.png"));
    listCountryRD.add(const CountryRD("MA","Morocco","assets/icon/flags/morocco.png"));
    listCountryRD.add(const CountryRD("NA","Namibia","assets/icon/flags/namibia.png"));
    listCountryRD.add(const CountryRD("PA","Panama","assets/icon/flags/panama.png"));
    listCountryRD.add(const CountryRD("QA","Qatar","assets/icon/flags/qatar.png"));
    listCountryRD.add(const CountryRD("SA","Saudi Arabia","assets/icon/flags/saudi_arabia.png"));
    listCountryRD.add(const CountryRD("UA","Ukraine","assets/icon/flags/ukraine.png"));
    listCountryRD.add(const CountryRD("VA","Vatican City","assets/icon/flags/vatican_city.png"));
    listCountryRD.add(const CountryRD("ZA","South Africa","assets/icon/flags/south_africa.png"));
    listCountryRD.add(const CountryRD("BB","Barbados","assets/icon/flags/barbados.png"));
    listCountryRD.add(const CountryRD("GB","United Kingdom","assets/icon/flags/united_kingdom.png"));
    listCountryRD.add(const CountryRD("LB","Lebanon","assets/icon/flags/lebanon.png"));
    listCountryRD.add(const CountryRD("SB","Solomon Islands","assets/icon/flags/solomon_islands.png"));
    listCountryRD.add(const CountryRD("CC","Cocos Keeling Islands","assets/icon/flags/cocos_keeling_islands.png"));
    listCountryRD.add(const CountryRD("EC","Ecuador","assets/icon/flags/ecuador.png"));
    listCountryRD.add(const CountryRD("IC","Canary Islands","assets/icon/flags/canary_islands.png"));
    listCountryRD.add(const CountryRD("LC","Saint Lucia","assets/icon/flags/saint_lucia.png"));
    listCountryRD.add(const CountryRD("MC","Monaco","assets/icon/flags/monaco.png"));
    listCountryRD.add(const CountryRD("NC","New Caledonia","assets/icon/flags/new_caledonia.png"));
    listCountryRD.add(const CountryRD("SC","Seychelles","assets/icon/flags/seychelles.png"));
    listCountryRD.add(const CountryRD("TC","Turks and Caicos Islands","assets/icon/flags/turks_and_caicos_islands.png"));
    listCountryRD.add(const CountryRD("VC","Saint Vincent and The Grenadines","assets/icon/flags/saint_vincent_and_the_grenadines.png"));
    listCountryRD.add(const CountryRD("AD","Andorra","assets/icon/flags/andorra.png"));
    listCountryRD.add(const CountryRD("BD","Bangladesh","assets/icon/flags/bangladesh.png"));
    listCountryRD.add(const CountryRD("CD","Democratic Republic Of The Congo","assets/icon/flags/democratic_republic_of_the_congo.png"));
    listCountryRD.add(const CountryRD("GD","Grenada","assets/icon/flags/grenada.png"));
    listCountryRD.add(const CountryRD("ID","Indonesia","assets/icon/flags/indonesia.png"));
    listCountryRD.add(const CountryRD("MD","Moldova","assets/icon/flags/moldova.png"));
    listCountryRD.add(const CountryRD("SD","Sudan","assets/icon/flags/sudan.png"));
    listCountryRD.add(const CountryRD("TD","Chad","assets/icon/flags/chad.png"));
    listCountryRD.add(const CountryRD("AE","United Arab Emirates","assets/icon/flags/united_arab_emirates.png"));
    listCountryRD.add(const CountryRD("BE","Belgium","assets/icon/flags/belgium.png"));
    listCountryRD.add(const CountryRD("DE","Germany","assets/icon/flags/germany.png"));
    listCountryRD.add(const CountryRD("EE","Estonia","assets/icon/flags/estonia.png"));
    listCountryRD.add(const CountryRD("GE","Georgia","assets/icon/flags/georgia.png"));
    listCountryRD.add(const CountryRD("IE","Ireland","assets/icon/flags/ireland.png"));
    listCountryRD.add(const CountryRD("JE","Jersey","assets/icon/flags/jersey.png"));
    listCountryRD.add(const CountryRD("KE","Kenya","assets/icon/flags/kenya.png"));
    listCountryRD.add(const CountryRD("ME","Montenegro","assets/icon/flags/montenegro.png"));
    listCountryRD.add(const CountryRD("NE","Niger","assets/icon/flags/niger.png"));
    listCountryRD.add(const CountryRD("PE","Peru","assets/icon/flags/peru.png"));
    listCountryRD.add(const CountryRD("SE","Sweden","assets/icon/flags/sweden.png"));
    listCountryRD.add(const CountryRD("VE","Venezuela","assets/icon/flags/venezuela.png"));
    listCountryRD.add(const CountryRD("YE","Yemen","assets/icon/flags/yemen.png"));
    listCountryRD.add(const CountryRD("AF","Afghanistan","assets/icon/flags/afghanistan.png"));
    listCountryRD.add(const CountryRD("BF","Burkina Faso","assets/icon/flags/burkina_faso.png"));
    listCountryRD.add(const CountryRD("CF","Central African Republic","assets/icon/flags/central_african_republic.png"));
    listCountryRD.add(const CountryRD("MF","Saint Martin","assets/icon/flags/saint_martin.png"));
    listCountryRD.add(const CountryRD("NF","Norfolk Island","assets/icon/flags/norfolk_island.png"));
    listCountryRD.add(const CountryRD("PF","French Polynesia","assets/icon/flags/french_polynesia.png"));
    listCountryRD.add(const CountryRD("TF","French Southern Territories","assets/icon/flags/french_southern_territories.png"));
    listCountryRD.add(const CountryRD("WF","Wallis and Futuna","assets/icon/flags/wallis_and_futuna.png"));
    listCountryRD.add(const CountryRD("AG","Antigua and Barbuda","assets/icon/flags/antigua_and_barbuda.png"));
    listCountryRD.add(const CountryRD("BG","Bulgaria","assets/icon/flags/bulgaria.png"));
    listCountryRD.add(const CountryRD("CG","Republic of the Congo","assets/icon/flags/republic_of_the_congo.png"));
    listCountryRD.add(const CountryRD("EG","Egypt","assets/icon/flags/egypt.png"));
    listCountryRD.add(const CountryRD("GG","Guernsey","assets/icon/flags/guernsey.png"));
    listCountryRD.add(const CountryRD("KG","Kyrgyzstan","assets/icon/flags/kyrgyzstan.png"));
    listCountryRD.add(const CountryRD("MG","Madagascar","assets/icon/flags/madagascar.png"));
    listCountryRD.add(const CountryRD("NG","Nigeria","assets/icon/flags/nigeria.png"));
    listCountryRD.add(const CountryRD("PG","Papua New Guinea","assets/icon/flags/papua_new_guinea.png"));
    listCountryRD.add(const CountryRD("SG","Singapore","assets/icon/flags/singapore.png"));
    listCountryRD.add(const CountryRD("TG","Togo","assets/icon/flags/togo.png"));
    listCountryRD.add(const CountryRD("UG","Uganda","assets/icon/flags/uganda.png"));
    listCountryRD.add(const CountryRD("VG","British Virgin Islands","assets/icon/flags/british_virgin_islands.png"));
    listCountryRD.add(const CountryRD("BH","Bahrain","assets/icon/flags/bahrain.png"));
    listCountryRD.add(const CountryRD("CH","Switzerland","assets/icon/flags/switzerland.png"));
    listCountryRD.add(const CountryRD("EH","Western Sahara","assets/icon/flags/western_sahara.png"));
    listCountryRD.add(const CountryRD("GH","Ghana","assets/icon/flags/ghana.png"));
    listCountryRD.add(const CountryRD("KH","Cambodia","assets/icon/flags/cambodia.png"));
    listCountryRD.add(const CountryRD("MH","Marshall Islands","assets/icon/flags/marshall_islands.png"));
    listCountryRD.add(const CountryRD("PH","Philippines","assets/icon/flags/philippines.png"));
    listCountryRD.add(const CountryRD("SH","Saint Helena","assets/icon/flags/saint_helena.png"));
    listCountryRD.add(const CountryRD("TH","Thailand","assets/icon/flags/thailand.png"));
    listCountryRD.add(const CountryRD("AI","Anguilla","assets/icon/flags/anguilla.png"));
    listCountryRD.add(const CountryRD("BI","Burundi","assets/icon/flags/burundi.png"));
    listCountryRD.add(const CountryRD("CI","Cote Divoire","assets/icon/flags/cote_divoire.png"));
    listCountryRD.add(const CountryRD("FI","Finland","assets/icon/flags/finland.png"));
    listCountryRD.add(const CountryRD("GI","Gibraltar","assets/icon/flags/gibraltar.png"));
    listCountryRD.add(const CountryRD("KI","Kiribati","assets/icon/flags/kiribati.png"));
    listCountryRD.add(const CountryRD("LI","Liechtenstein","assets/icon/flags/liechtenstein.png"));
    listCountryRD.add(const CountryRD("NI","Nicaragua","assets/icon/flags/nicaragua.png"));
    listCountryRD.add(const CountryRD("SI","Slovenia","assets/icon/flags/slovenia.png"));
    listCountryRD.add(const CountryRD("VI","US Virgin Islands","assets/icon/flags/us_virgin_islands.png"));
    listCountryRD.add(const CountryRD("BJ","Benin","assets/icon/flags/benin.png"));
    listCountryRD.add(const CountryRD("DJ","Djibouti","assets/icon/flags/djibouti.png"));
    listCountryRD.add(const CountryRD("FJ","Fiji","assets/icon/flags/fiji.png"));
    listCountryRD.add(const CountryRD("TJ","Tajikistan","assets/icon/flags/tajikistan.png"));
    listCountryRD.add(const CountryRD("CK","Cook Islands","assets/icon/flags/cook_islands.png"));
    listCountryRD.add(const CountryRD("DK","Denmark","assets/icon/flags/denmark.png"));
    listCountryRD.add(const CountryRD("FK","Falkland Islands","assets/icon/flags/falkland_islands.png"));
    listCountryRD.add(const CountryRD("HK","Hong Kong","assets/icon/flags/hong_kong.png"));
    listCountryRD.add(const CountryRD("LK","Sri Lanka","assets/icon/flags/sri_lanka.png"));
    listCountryRD.add(const CountryRD("MK","Macedonia","assets/icon/flags/macedonia.png"));
    listCountryRD.add(const CountryRD("PK","Pakistan","assets/icon/flags/pakistan.png"));
    listCountryRD.add(const CountryRD("SK","Slovakia","assets/icon/flags/slovakia.png"));
    listCountryRD.add(const CountryRD("TK","Tokelau","assets/icon/flags/tokelau.png"));
    listCountryRD.add(const CountryRD("AL","Albania","assets/icon/flags/albania.png"));
    listCountryRD.add(const CountryRD("BL","Saint Barthelemy","assets/icon/flags/saint_barthelemy.png"));
    listCountryRD.add(const CountryRD("CL","Chile","assets/icon/flags/chile.png"));
    listCountryRD.add(const CountryRD("GL","Greenland","assets/icon/flags/greenland.png"));
    listCountryRD.add(const CountryRD("IL","Israel","assets/icon/flags/israel.png"));
    listCountryRD.add(const CountryRD("ML","Mali","assets/icon/flags/mali.png"));
    listCountryRD.add(const CountryRD("NL","Netherlands","assets/icon/flags/netherlands.png"));
    listCountryRD.add(const CountryRD("PL","Poland","assets/icon/flags/poland.png"));
    listCountryRD.add(const CountryRD("SL","Sierra Leone","assets/icon/flags/sierra_leone.png"));
    listCountryRD.add(const CountryRD("AM","Armenia","assets/icon/flags/armenia.png"));
    listCountryRD.add(const CountryRD("BM","Bermuda","assets/icon/flags/bermuda.png"));
    listCountryRD.add(const CountryRD("CM","Cameroon","assets/icon/flags/cameroon.png"));
    listCountryRD.add(const CountryRD("DM","Dominica","assets/icon/flags/dominica.png"));
    listCountryRD.add(const CountryRD("FM","Micronesia","assets/icon/flags/micronesia.png"));
    listCountryRD.add(const CountryRD("GM","Gambia","assets/icon/flags/gambia.png"));
    listCountryRD.add(const CountryRD("IM","Isle of Man","assets/icon/flags/isle_of_man.png"));
    listCountryRD.add(const CountryRD("JM","Jamaica","assets/icon/flags/jamaica.png"));
    listCountryRD.add(const CountryRD("KM","Comoros","assets/icon/flags/comoros.png"));
    listCountryRD.add(const CountryRD("MM","Myanmar","assets/icon/flags/myanmar.png"));
    listCountryRD.add(const CountryRD("OM","Oman","assets/icon/flags/oman.png"));
    listCountryRD.add(const CountryRD("SM","San Marino","assets/icon/flags/san_marino.png"));
    listCountryRD.add(const CountryRD("TM","Turkmenistan","assets/icon/flags/turkmenistan.png"));
    listCountryRD.add(const CountryRD("ZM","Zambia","assets/icon/flags/zambia.png"));
    listCountryRD.add(const CountryRD("BN","Brunei","assets/icon/flags/brunei.png"));
    listCountryRD.add(const CountryRD("CN","China","assets/icon/flags/china.png"));
    listCountryRD.add(const CountryRD("GN","Guinea","assets/icon/flags/guinea.png"));
    listCountryRD.add(const CountryRD("HN","Honduras","assets/icon/flags/honduras.png"));
    listCountryRD.add(const CountryRD("IN","India","assets/icon/flags/india.png"));
    listCountryRD.add(const CountryRD("KN","Saint Kitts and Nevis","assets/icon/flags/saint_kitts_and_nevis.png"));
    listCountryRD.add(const CountryRD("MN","Mongolia","assets/icon/flags/mongolia.png"));
    listCountryRD.add(const CountryRD("PN","Pitcairn Islands","assets/icon/flags/pitcairn_islands.png"));
    listCountryRD.add(const CountryRD("SN","Senegal","assets/icon/flags/senegal.png"));
    listCountryRD.add(const CountryRD("TN","Tunisia","assets/icon/flags/tunisia.png"));
    listCountryRD.add(const CountryRD("VN","Vietnam","assets/icon/flags/vietnam.png"));
    listCountryRD.add(const CountryRD("AO","Angola","assets/icon/flags/angola.png"));
    listCountryRD.add(const CountryRD("BO","Bolivia","assets/icon/flags/bolivia.png"));
    listCountryRD.add(const CountryRD("CO","Colombia","assets/icon/flags/colombia.png"));
    listCountryRD.add(const CountryRD("DO","Dominican Republic","assets/icon/flags/dominican_republic.png"));
    listCountryRD.add(const CountryRD("JO","Jordan","assets/icon/flags/jordan.png"));
    listCountryRD.add(const CountryRD("MO","Macau","assets/icon/flags/macau.png"));
    listCountryRD.add(const CountryRD("NO","Norway","assets/icon/flags/norway.png"));
    listCountryRD.add(const CountryRD("RO","Romania","assets/icon/flags/romania.png"));
    listCountryRD.add(const CountryRD("SO","Somalia","assets/icon/flags/somalia.png"));
    listCountryRD.add(const CountryRD("TO","Tonga","assets/icon/flags/tonga.png"));
    listCountryRD.add(const CountryRD("JP","Japan","assets/icon/flags/japan.png"));
    listCountryRD.add(const CountryRD("KP","North Korea","assets/icon/flags/north_korea.png"));
    listCountryRD.add(const CountryRD("MP","Northern Mariana Islands","assets/icon/flags/northern_mariana_islands.png"));
    listCountryRD.add(const CountryRD("NP","Nepal","assets/icon/flags/nepal.png"));
    listCountryRD.add(const CountryRD("AQ","Antarctica","assets/icon/flags/antarctica.png"));
    listCountryRD.add(const CountryRD("GQ","Equatorial Guinea","assets/icon/flags/equatorial_guinea.png"));
    listCountryRD.add(const CountryRD("IQ","Iraq","assets/icon/flags/iraq.png"));
    listCountryRD.add(const CountryRD("MQ","Martinique","assets/icon/flags/martinique.png"));
    listCountryRD.add(const CountryRD("AR","Argentina","assets/icon/flags/argentina.png"));
    listCountryRD.add(const CountryRD("BR","Brazil","assets/icon/flags/brazil.png"));
    listCountryRD.add(const CountryRD("CR","Costa Rica","assets/icon/flags/costa_rica.png"));
    listCountryRD.add(const CountryRD("ER","Eritrea","assets/icon/flags/eritrea.png"));
    listCountryRD.add(const CountryRD("FR","France","assets/icon/flags/france.png"));
    listCountryRD.add(const CountryRD("GR","Greece","assets/icon/flags/greece.png"));
    listCountryRD.add(const CountryRD("HR","Croatia","assets/icon/flags/croatia.png"));
    listCountryRD.add(const CountryRD("IR","Iran","assets/icon/flags/iran.png"));
    listCountryRD.add(const CountryRD("KR","South Korea","assets/icon/flags/south_korea.png"));
    listCountryRD.add(const CountryRD("LR","Liberia","assets/icon/flags/liberia.png"));
    listCountryRD.add(const CountryRD("MR","Mauritania","assets/icon/flags/mauritania.png"));
    listCountryRD.add(const CountryRD("NR","Nauru","assets/icon/flags/nauru.png"));
    listCountryRD.add(const CountryRD("PR","Puerto Rico","assets/icon/flags/puerto_rico.png"));
    listCountryRD.add(const CountryRD("SR","Suriname","assets/icon/flags/suriname.png"));
    listCountryRD.add(const CountryRD("TR","Turkey","assets/icon/flags/turkey.png"));
    listCountryRD.add(const CountryRD("AS","American Samoa","assets/icon/flags/american_samoa.png"));
    listCountryRD.add(const CountryRD("BS","Bahamas","assets/icon/flags/bahamas.png"));
    listCountryRD.add(const CountryRD("ES","Spain","assets/icon/flags/spain.png"));
    listCountryRD.add(const CountryRD("IS","Iceland","assets/icon/flags/iceland.png"));
    listCountryRD.add(const CountryRD("LS","Lesotho","assets/icon/flags/lesotho.png"));
    listCountryRD.add(const CountryRD("MS","Montserrat","assets/icon/flags/montserrat.png"));
    listCountryRD.add(const CountryRD("RS","Serbia","assets/icon/flags/serbia.png"));
    listCountryRD.add(const CountryRD("US","United States","assets/icon/flags/united_states.png"));
    listCountryRD.add(const CountryRD("WS","Samoa","assets/icon/flags/samoa.png"));
    listCountryRD.add(const CountryRD("AT","Austria","assets/icon/flags/austria.png"));
    listCountryRD.add(const CountryRD("ET","Ethiopia","assets/icon/flags/ethiopia.png"));
    listCountryRD.add(const CountryRD("GT","Guatemala","assets/icon/flags/guatemala.png"));
    listCountryRD.add(const CountryRD("HT","Haiti","assets/icon/flags/haiti.png"));
    listCountryRD.add(const CountryRD("IT","Italy","assets/icon/flags/italy.png"));
    listCountryRD.add(const CountryRD("LT","Lithuania","assets/icon/flags/lithuania.png"));
    listCountryRD.add(const CountryRD("MT","Malta","assets/icon/flags/malta.png"));
    listCountryRD.add(const CountryRD("PT","Portugal","assets/icon/flags/portugal.png"));
    listCountryRD.add(const CountryRD("AU","Australia","assets/icon/flags/australia.png"));
    listCountryRD.add(const CountryRD("CU","Cuba","assets/icon/flags/cuba.png"));
    listCountryRD.add(const CountryRD("EU","European Union","assets/icon/flags/european_union.png"));
    listCountryRD.add(const CountryRD("GU","Guam","assets/icon/flags/guam.png"));
    listCountryRD.add(const CountryRD("HU","Hungary","assets/icon/flags/hungary.png"));
    listCountryRD.add(const CountryRD("LU","Luxembourg","assets/icon/flags/luxembourg.png"));
    listCountryRD.add(const CountryRD("MU","Mauritius","assets/icon/flags/mauritius.png"));
    listCountryRD.add(const CountryRD("NU","Niue","assets/icon/flags/niue.png"));
    listCountryRD.add(const CountryRD("RU","Russia","assets/icon/flags/russia.png"));
    listCountryRD.add(const CountryRD("VU","Vanuatu","assets/icon/flags/vanuatu.png"));
    listCountryRD.add(const CountryRD("LV","Latvia","assets/icon/flags/latvia.png"));
    listCountryRD.add(const CountryRD("MV","Maldives","assets/icon/flags/maldives.png"));
    listCountryRD.add(const CountryRD("PW","Palau","assets/icon/flags/palau.png"));
    listCountryRD.add(const CountryRD("TW","Taiwan","assets/icon/flags/taiwan.png"));
    listCountryRD.add(const CountryRD("ZW","Zimbabwe","assets/icon/flags/zimbabwe.png"));
    listCountryRD.add(const CountryRD("MX","Mexico","assets/icon/flags/mexico.png"));
    listCountryRD.add(const CountryRD("BY","Belarus","assets/icon/flags/belarus.png"));
    listCountryRD.add(const CountryRD("CY","Cyprus","assets/icon/flags/cyprus.png"));
    listCountryRD.add(const CountryRD("LY","Libya","assets/icon/flags/libya.png"));
    listCountryRD.add(const CountryRD("MY","Malaysia","assets/icon/flags/malaysia.png"));
    listCountryRD.add(const CountryRD("UY","Uruguay","assets/icon/flags/uruguay.png"));
    listCountryRD.add(const CountryRD("AZ","Azerbaijan","assets/icon/flags/azerbaijan.png"));
    listCountryRD.add(const CountryRD("BZ","Belize","assets/icon/flags/belize.png"));
    listCountryRD.add(const CountryRD("CZ","Czech Republic","assets/icon/flags/czech_republic.png"));
    listCountryRD.add(const CountryRD("DZ","Algeria","assets/icon/flags/algeria.png"));
    listCountryRD.add(const CountryRD("KZ","Kazakhstan","assets/icon/flags/kazakhstan.png"));
    listCountryRD.add(const CountryRD("MZ","Mozambique","assets/icon/flags/mozambique.png"));
    listCountryRD.add(const CountryRD("NZ","New Zealand","assets/icon/flags/new_zealand.png"));
    listCountryRD.add(const CountryRD("SZ","Swaziland","assets/icon/flags/swaziland.png"));
    listCountryRD.add(const CountryRD("TZ","Tanzania","assets/icon/flags/tanzania.png"));
    listCountryRD.add(const CountryRD("UZ","Uzbekistan","assets/icon/flags/uzbekistan.png"));
    listCountryRD.add(const CountryRD("UNKNOWN","Unknown","assets/icon/flags/unknown.png"));
    return ListCountryRD(listCountryRD);
  }
}