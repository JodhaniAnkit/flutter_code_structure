

import 'dart:convert';

class CountryList {
  CountryList({
    String? message,
    List<CountryItem>? data,
  }) {
    _message = message;
    _data = data;
  }

  CountryList.fromJson(dynamic json) {
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(CountryItem.fromJson(v));
      });
    }
  }

  String? _message;
  List<CountryItem>? _data;

  String? get message => _message;

  List<CountryItem>? get data => _data;

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class CountryItem {
  CountryItem({
    int? countryId,
    String? name,
    String? code,
    String? phoneCode,
  }) {
    _countryId = countryId;
    _name = name;
    _code = code;
    _phoneCode = phoneCode;
  }

  CountryItem.fromJson(dynamic json) {
    _countryId = json['country_code_id'];
    _name = json['name'];
    _code = json['code'];
    _phoneCode = json['phone_code'];
  }

  int? _countryId;
  String? _name;
  String? _code;
  String? _phoneCode;

  int? get countryId => _countryId;

  String? get name => _name;

  String? get code => _code;

  String? get phoneCode => _phoneCode;

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['country_code_id'] = _countryId;
    map['name'] = _name;
    map['code'] = _code;
    map['phone_code'] = _phoneCode;
    return map;
  }
}

CountryList getCountryList() {
  return CountryList.fromJson(jsonDecode('''
{
  "message": "country code list successfully",
  "data": [
    {
      "country_code_id": 1,
      "name": "Afghanistan",
      "code": "AF",
      "phone_code": "93"
    },
    {
      "country_code_id": 2,
      "name": "Albania",
      "code": "AL",
      "phone_code": "355"
    },
    {
      "country_code_id": 3,
      "name": "Algeria",
      "code": "DZ",
      "phone_code": "213"
    },
    {
      "country_code_id": 4,
      "name": "American Samoa",
      "code": "AS",
      "phone_code": "1684"
    },
    {
      "country_code_id": 5,
      "name": "Andorra",
      "code": "AD",
      "phone_code": "376"
    },
    {
      "country_code_id": 6,
      "name": "Angola",
      "code": "AO",
      "phone_code": "244"
    },
    {
      "country_code_id": 7,
      "name": "Anguilla",
      "code": "AI",
      "phone_code": "1264"
    },
    {
      "country_code_id": 8,
      "name": "Antarctica",
      "code": "AQ",
      "phone_code": "67264"
    },
    {
      "country_code_id": 9,
      "name": "Antigua and Barbuda",
      "code": "AG",
      "phone_code": "1268"
    },
    {
      "country_code_id": 10,
      "name": "Argentina",
      "code": "AR",
      "phone_code": "54"
    },
    {
      "country_code_id": 11,
      "name": "Armenia",
      "code": "AM",
      "phone_code": "374"
    },
    {
      "country_code_id": 12,
      "name": "Aruba",
      "code": "AW",
      "phone_code": "297"
    },
    {
      "country_code_id": 13,
      "name": "Australia",
      "code": "AU",
      "phone_code": "61"
    },
    {
      "country_code_id": 14,
      "name": "Austria",
      "code": "AT",
      "phone_code": "43"
    },
    {
      "country_code_id": 15,
      "name": "Azerbaijan",
      "code": "AZ",
      "phone_code": "994"
    },
    {
      "country_code_id": 16,
      "name": "Bahamas",
      "code": "BS",
      "phone_code": "1242"
    },
    {
      "country_code_id": 17,
      "name": "Bahrain",
      "code": "BH",
      "phone_code": "973"
    },
    {
      "country_code_id": 18,
      "name": "Bangladesh",
      "code": "BD",
      "phone_code": "880"
    },
    {
      "country_code_id": 19,
      "name": "Barbados",
      "code": "BB",
      "phone_code": "1246"
    },
    {
      "country_code_id": 20,
      "name": "Belarus",
      "code": "BY",
      "phone_code": "375"
    },
    {
      "country_code_id": 21,
      "name": "Belgium",
      "code": "BE",
      "phone_code": "32"
    },
    {
      "country_code_id": 22,
      "name": "Belize",
      "code": "BZ",
      "phone_code": "501"
    },
    {
      "country_code_id": 23,
      "name": "Benin",
      "code": "BJ",
      "phone_code": "229"
    },
    {
      "country_code_id": 24,
      "name": "Bermuda",
      "code": "BM",
      "phone_code": "1441"
    },
    {
      "country_code_id": 25,
      "name": "Bhutan",
      "code": "BT",
      "phone_code": "975"
    },
    {
      "country_code_id": 26,
      "name": "Bolivia",
      "code": "BO",
      "phone_code": "591"
    },
    {
      "country_code_id": 27,
      "name": "Bosnia and Herzegovina",
      "code": "BA",
      "phone_code": "387"
    },
    {
      "country_code_id": 28,
      "name": "Botswana",
      "code": "BW",
      "phone_code": "267"
    },
    {
      "country_code_id": 29,
      "name": "Bouvet Island",
      "code": "BV",
      "phone_code": "55"
    },
    {
      "country_code_id": 30,
      "name": "Brazil",
      "code": "BR",
      "phone_code": "55"
    },
    {
      "country_code_id": 31,
      "name": "British Indian Ocean Territory",
      "code": "IO",
      "phone_code": "1284"
    },
    {
      "country_code_id": 32,
      "name": "British Virgin Islands",
      "code": "VG",
      "phone_code": "1284"
    },
    {
      "country_code_id": 33,
      "name": "Brunei",
      "code": "BN",
      "phone_code": "673"
    },
    {
      "country_code_id": 34,
      "name": "Bulgaria",
      "code": "BG",
      "phone_code": "359"
    },
    {
      "country_code_id": 35,
      "name": "Burkina Faso",
      "code": "BF",
      "phone_code": "226"
    },
    {
      "country_code_id": 36,
      "name": "Burundi",
      "code": "BI",
      "phone_code": "257"
    },
    {
      "country_code_id": 37,
      "name": "Cambodia",
      "code": "KH",
      "phone_code": "855"
    },
    {
      "country_code_id": 38,
      "name": "Cameroon",
      "code": "CM",
      "phone_code": "237"
    },
    {
      "country_code_id": 39,
      "name": "Canada",
      "code": "CA",
      "phone_code": "1"
    },
    {
      "country_code_id": 40,
      "name": "Cape Verde",
      "code": "CV",
      "phone_code": "238"
    },
    {
      "country_code_id": 41,
      "name": "Cayman Islands",
      "code": "KY",
      "phone_code": "1345"
    },
    {
      "country_code_id": 42,
      "name": "Central African Republic",
      "code": "CF",
      "phone_code": "236"
    },
    {
      "country_code_id": 43,
      "name": "Chad",
      "code": "TD",
      "phone_code": "235"
    },
    {
      "country_code_id": 44,
      "name": "Chile",
      "code": "CL",
      "phone_code": "56"
    },
    {
      "country_code_id": 45,
      "name": "China",
      "code": "CN",
      "phone_code": "86"
    },
    {
      "country_code_id": 46,
      "name": "Christmas Island",
      "code": "CX",
      "phone_code": "61"
    },
    {
      "country_code_id": 47,
      "name": "Cocos Islands",
      "code": "CC",
      "phone_code": "61"
    },
    {
      "country_code_id": 48,
      "name": "Colombia",
      "code": "CO",
      "phone_code": "57"
    },
    {
      "country_code_id": 49,
      "name": "Comoros",
      "code": "KM",
      "phone_code": "269"
    },
    {
      "country_code_id": 50,
      "name": "Cook Islands",
      "code": "CK",
      "phone_code": "682"
    },
    {
      "country_code_id": 51,
      "name": "Costa Rica",
      "code": "CR",
      "phone_code": "506"
    },
    {
      "country_code_id": 52,
      "name": "Croatia",
      "code": "HR",
      "phone_code": "385"
    },
    {
      "country_code_id": 53,
      "name": "Cuba",
      "code": "CU",
      "phone_code": "53"
    },
    {
      "country_code_id": 54,
      "name": "Cyprus",
      "code": "CY",
      "phone_code": "357"
    },
    {
      "country_code_id": 55,
      "name": "Czech Republic",
      "code": "CZ",
      "phone_code": "420"
    },
    {
      "country_code_id": 56,
      "name": "Democratic Republic of the Congo",
      "code": "CD",
      "phone_code": "243"
    },
    {
      "country_code_id": 57,
      "name": "Denmark",
      "code": "DK",
      "phone_code": "45"
    },
    {
      "country_code_id": 58,
      "name": "Djibouti",
      "code": "DJ",
      "phone_code": "253"
    },
    {
      "country_code_id": 59,
      "name": "Dominica",
      "code": "DM",
      "phone_code": "1767"
    },
    {
      "country_code_id": 60,
      "name": "Dominican Republic",
      "code": "DO",
      "phone_code": "1809"
    },
    {
      "country_code_id": 61,
      "name": "East Timor",
      "code": "TL",
      "phone_code": "670"
    },
    {
      "country_code_id": 62,
      "name": "Ecuador",
      "code": "EC",
      "phone_code": "593"
    },
    {
      "country_code_id": 63,
      "name": "Egypt",
      "code": "EG",
      "phone_code": "20"
    },
    {
      "country_code_id": 64,
      "name": "El Salvador",
      "code": "SV",
      "phone_code": "503"
    },
    {
      "country_code_id": 65,
      "name": "Equatorial Guinea",
      "code": "GQ",
      "phone_code": "240"
    },
    {
      "country_code_id": 66,
      "name": "Eritrea",
      "code": "ER",
      "phone_code": "291"
    },
    {
      "country_code_id": 67,
      "name": "Estonia",
      "code": "EE",
      "phone_code": "372"
    },
    {
      "country_code_id": 68,
      "name": "Ethiopia",
      "code": "ET",
      "phone_code": "251"
    },
    {
      "country_code_id": 69,
      "name": "Falkland Islands",
      "code": "FK",
      "phone_code": "500"
    },
    {
      "country_code_id": 70,
      "name": "Faroe Islands",
      "code": "FO",
      "phone_code": "298"
    },
    {
      "country_code_id": 71,
      "name": "Fiji",
      "code": "FJ",
      "phone_code": "697"
    },
    {
      "country_code_id": 72,
      "name": "Finland",
      "code": "FI",
      "phone_code": "358"
    },
    {
      "country_code_id": 73,
      "name": "France",
      "code": "FR",
      "phone_code": "33"
    },
    {
      "country_code_id": 74,
      "name": "French Guiana",
      "code": "GF",
      "phone_code": "594"
    },
    {
      "country_code_id": 75,
      "name": "French Polynesia",
      "code": "PF",
      "phone_code": "689"
    },
    {
      "country_code_id": 76,
      "name": "French Southern Territories",
      "code": "TF",
      "phone_code": "262"
    },
    {
      "country_code_id": 77,
      "name": "Gabon",
      "code": "GA",
      "phone_code": "241"
    },
    {
      "country_code_id": 78,
      "name": "Gambia",
      "code": "GM",
      "phone_code": "220"
    },
    {
      "country_code_id": 79,
      "name": "Georgia",
      "code": "GE",
      "phone_code": "995"
    },
    {
      "country_code_id": 80,
      "name": "Germany",
      "code": "DE",
      "phone_code": "49"
    },
    {
      "country_code_id": 81,
      "name": "Ghana",
      "code": "GH",
      "phone_code": "233"
    },
    {
      "country_code_id": 82,
      "name": "Gibraltar",
      "code": "GI",
      "phone_code": "350"
    },
    {
      "country_code_id": 83,
      "name": "Greece",
      "code": "GR",
      "phone_code": "30"
    },
    {
      "country_code_id": 84,
      "name": "Greenland",
      "code": "GL",
      "phone_code": "299"
    },
    {
      "country_code_id": 85,
      "name": "Grenada",
      "code": "GD",
      "phone_code": "1473"
    },
    {
      "country_code_id": 86,
      "name": "Guadeloupe",
      "code": "GP",
      "phone_code": "590"
    },
    {
      "country_code_id": 87,
      "name": "Guam",
      "code": "GU",
      "phone_code": "1671"
    },
    {
      "country_code_id": 88,
      "name": "Guatemala",
      "code": "GT",
      "phone_code": "502"
    },
    {
      "country_code_id": 89,
      "name": "Guinea",
      "code": "GN",
      "phone_code": "224"
    },
    {
      "country_code_id": 90,
      "name": "Guinea-Bissau",
      "code": "GW",
      "phone_code": "245"
    },
    {
      "country_code_id": 91,
      "name": "Guyana",
      "code": "GY",
      "phone_code": "592"
    },
    {
      "country_code_id": 92,
      "name": "Haiti",
      "code": "HT",
      "phone_code": "509"
    },
    {
      "country_code_id": 93,
      "name": "Heard Island and McDonald Islands",
      "code": "HM",
      "phone_code": "672"
    },
    {
      "country_code_id": 94,
      "name": "Honduras",
      "code": "HN",
      "phone_code": "504"
    },
    {
      "country_code_id": 95,
      "name": "Hong Kong",
      "code": "HK",
      "phone_code": "852"
    },
    {
      "country_code_id": 96,
      "name": "Hungary",
      "code": "HU",
      "phone_code": "36"
    },
    {
      "country_code_id": 97,
      "name": "Iceland",
      "code": "IS",
      "phone_code": "354"
    },
    {
      "country_code_id": 98,
      "name": "India",
      "code": "IN",
      "phone_code": "91"
    },
    {
      "country_code_id": 99,
      "name": "Indonesia",
      "code": "ID",
      "phone_code": "62"
    },
    {
      "country_code_id": 100,
      "name": "Iran",
      "code": "IR",
      "phone_code": "98"
    },
    {
      "country_code_id": 101,
      "name": "Iraq",
      "code": "IQ",
      "phone_code": "964"
    },
    {
      "country_code_id": 102,
      "name": "Ireland",
      "code": "IE",
      "phone_code": "353"
    },
    {
      "country_code_id": 103,
      "name": "Israel",
      "code": "IL",
      "phone_code": "972"
    },
    {
      "country_code_id": 104,
      "name": "Italy",
      "code": "IT",
      "phone_code": "39"
    },
    {
      "country_code_id": 105,
      "name": "Ivory Coast",
      "code": "CI",
      "phone_code": "225"
    },
    {
      "country_code_id": 106,
      "name": "Jamaica",
      "code": "JM",
      "phone_code": "1876"
    },
    {
      "country_code_id": 107,
      "name": "Japan",
      "code": "JP",
      "phone_code": "81"
    },
    {
      "country_code_id": 108,
      "name": "Jordan",
      "code": "JO",
      "phone_code": "962"
    },
    {
      "country_code_id": 109,
      "name": "Kazakhstan",
      "code": "KZ",
      "phone_code": "7"
    },
    {
      "country_code_id": 110,
      "name": "Kenya",
      "code": "KE",
      "phone_code": "254"
    },
    {
      "country_code_id": 111,
      "name": "Kiribati",
      "code": "KI",
      "phone_code": "686"
    },
    {
      "country_code_id": 112,
      "name": "Kuwait",
      "code": "KW",
      "phone_code": "965"
    },
    {
      "country_code_id": 113,
      "name": "Kyrgyzstan",
      "code": "KG",
      "phone_code": "996"
    },
    {
      "country_code_id": 114,
      "name": "Laos",
      "code": "LA",
      "phone_code": "856"
    },
    {
      "country_code_id": 115,
      "name": "Latvia",
      "code": "LV",
      "phone_code": "371"
    },
    {
      "country_code_id": 116,
      "name": "Lebanon",
      "code": "LB",
      "phone_code": "961"
    },
    {
      "country_code_id": 117,
      "name": "Lesotho",
      "code": "LS",
      "phone_code": "266"
    },
    {
      "country_code_id": 118,
      "name": "Liberia",
      "code": "LR",
      "phone_code": "231"
    },
    {
      "country_code_id": 119,
      "name": "Libya",
      "code": "LY",
      "phone_code": "218"
    },
    {
      "country_code_id": 120,
      "name": "Liechtenstein",
      "code": "LI",
      "phone_code": "423"
    },
    {
      "country_code_id": 121,
      "name": "Lithuania",
      "code": "LT",
      "phone_code": "370"
    },
    {
      "country_code_id": 122,
      "name": "Luxembourg",
      "code": "LU",
      "phone_code": "352"
    },
    {
      "country_code_id": 123,
      "name": "Macao",
      "code": "MO",
      "phone_code": "853"
    },
    {
      "country_code_id": 124,
      "name": "Macedonia",
      "code": "MK",
      "phone_code": "389"
    },
    {
      "country_code_id": 125,
      "name": "Madagascar",
      "code": "MG",
      "phone_code": "261"
    },
    {
      "country_code_id": 126,
      "name": "Malawi",
      "code": "MW",
      "phone_code": "265"
    },
    {
      "country_code_id": 127,
      "name": "Malaysia",
      "code": "MY",
      "phone_code": "60"
    },
    {
      "country_code_id": 128,
      "name": "Maldives",
      "code": "MV",
      "phone_code": "960"
    },
    {
      "country_code_id": 129,
      "name": "Mali",
      "code": "ML",
      "phone_code": "223"
    },
    {
      "country_code_id": 130,
      "name": "Malta",
      "code": "MT",
      "phone_code": "356"
    },
    {
      "country_code_id": 131,
      "name": "Marshall Islands",
      "code": "MH",
      "phone_code": "692"
    },
    {
      "country_code_id": 132,
      "name": "Martinique",
      "code": "MQ",
      "phone_code": "596"
    },
    {
      "country_code_id": 133,
      "name": "Mauritania",
      "code": "MR",
      "phone_code": "222"
    },
    {
      "country_code_id": 134,
      "name": "Mauritius",
      "code": "MU",
      "phone_code": "230"
    },
    {
      "country_code_id": 135,
      "name": "Mayotte",
      "code": "YT",
      "phone_code": "262"
    },
    {
      "country_code_id": 136,
      "name": "Mexico",
      "code": "MX",
      "phone_code": "52"
    },
    {
      "country_code_id": 137,
      "name": "Micronesia",
      "code": "FM",
      "phone_code": "691"
    },
    {
      "country_code_id": 138,
      "name": "Moldova",
      "code": "MD",
      "phone_code": "373"
    },
    {
      "country_code_id": 139,
      "name": "Monaco",
      "code": "MC",
      "phone_code": "377"
    },
    {
      "country_code_id": 140,
      "name": "Mongolia",
      "code": "MN",
      "phone_code": "976"
    },
    {
      "country_code_id": 141,
      "name": "Montserrat",
      "code": "MS",
      "phone_code": "1664"
    },
    {
      "country_code_id": 142,
      "name": "Morocco",
      "code": "MA",
      "phone_code": "212"
    },
    {
      "country_code_id": 143,
      "name": "Mozambique",
      "code": "MZ",
      "phone_code": "258"
    },
    {
      "country_code_id": 144,
      "name": "Myanmar",
      "code": "MM",
      "phone_code": "95"
    },
    {
      "country_code_id": 145,
      "name": "Namibia",
      "code": "NA",
      "phone_code": "264"
    },
    {
      "country_code_id": 146,
      "name": "Nauru",
      "code": "NR",
      "phone_code": "674"
    },
    {
      "country_code_id": 147,
      "name": "Nepal",
      "code": "NP",
      "phone_code": "977"
    },
    {
      "country_code_id": 148,
      "name": "Netherlands",
      "code": "NL",
      "phone_code": "31"
    },
    {
      "country_code_id": 149,
      "name": "Netherlands Antilles",
      "code": "AN",
      "phone_code": "599"
    },
    {
      "country_code_id": 150,
      "name": "New Caledonia",
      "code": "NC",
      "phone_code": "687"
    },
    {
      "country_code_id": 151,
      "name": "New Zealand",
      "code": "NZ",
      "phone_code": "64"
    },
    {
      "country_code_id": 152,
      "name": "Nicaragua",
      "code": "NI",
      "phone_code": "505"
    },
    {
      "country_code_id": 153,
      "name": "Niger",
      "code": "NE",
      "phone_code": "227"
    },
    {
      "country_code_id": 154,
      "name": "Nigeria",
      "code": "NG",
      "phone_code": "234"
    },
    {
      "country_code_id": 155,
      "name": "Niue",
      "code": "NU",
      "phone_code": "683"
    },
    {
      "country_code_id": 156,
      "name": "Norfolk Island",
      "code": "NF",
      "phone_code": "672"
    },
    {
      "country_code_id": 157,
      "name": "North Korea",
      "code": "KP",
      "phone_code": "850"
    },
    {
      "country_code_id": 158,
      "name": "Northern Mariana Islands",
      "code": "MP",
      "phone_code": "1670"
    },
    {
      "country_code_id": 159,
      "name": "Norway",
      "code": "NO",
      "phone_code": "47"
    },
    {
      "country_code_id": 160,
      "name": "Oman",
      "code": "OM",
      "phone_code": "968"
    },
    {
      "country_code_id": 161,
      "name": "Pakistan",
      "code": "PK",
      "phone_code": "92"
    },
    {
      "country_code_id": 162,
      "name": "Palau",
      "code": "PW",
      "phone_code": "680"
    },
    {
      "country_code_id": 163,
      "name": "Palestinian Territory",
      "code": "PS",
      "phone_code": "970"
    },
    {
      "country_code_id": 164,
      "name": "Panama",
      "code": "PA",
      "phone_code": "507"
    },
    {
      "country_code_id": 165,
      "name": "Papua New Guinea",
      "code": "PG",
      "phone_code": "675"
    },
    {
      "country_code_id": 166,
      "name": "Paraguay",
      "code": "PY",
      "phone_code": "595"
    },
    {
      "country_code_id": 167,
      "name": "Peru",
      "code": "PE",
      "phone_code": "51"
    },
    {
      "country_code_id": 168,
      "name": "Philippines",
      "code": "PH",
      "phone_code": "63"
    },
    {
      "country_code_id": 169,
      "name": "Pitcairn",
      "code": "PN",
      "phone_code": "870"
    },
    {
      "country_code_id": 170,
      "name": "Poland",
      "code": "PL",
      "phone_code": "48"
    },
    {
      "country_code_id": 171,
      "name": "Portugal",
      "code": "PT",
      "phone_code": "351"
    },
    {
      "country_code_id": 172,
      "name": "Puerto Rico",
      "code": "PR",
      "phone_code": "1787"
    },
    {
      "country_code_id": 173,
      "name": "Qatar",
      "code": "QA",
      "phone_code": "974"
    },
    {
      "country_code_id": 174,
      "name": "Republic of the Congo",
      "code": "CG",
      "phone_code": "242"
    },
    {
      "country_code_id": 175,
      "name": "Reunion",
      "code": "RE",
      "phone_code": "262"
    },
    {
      "country_code_id": 176,
      "name": "Romania",
      "code": "RO",
      "phone_code": "40"
    },
    {
      "country_code_id": 177,
      "name": "Russia",
      "code": "RU",
      "phone_code": "7"
    },
    {
      "country_code_id": 178,
      "name": "Rwanda",
      "code": "RW",
      "phone_code": "250"
    },
    {
      "country_code_id": 179,
      "name": "Saint Helena",
      "code": "SH",
      "phone_code": "290"
    },
    {
      "country_code_id": 180,
      "name": "Saint Kitts and Nevis",
      "code": "KN",
      "phone_code": "1869"
    },
    {
      "country_code_id": 181,
      "name": "Saint Lucia",
      "code": "LC",
      "phone_code": "1758"
    },
    {
      "country_code_id": 182,
      "name": "Saint Pierre and Miquelon",
      "code": "PM",
      "phone_code": "508"
    },
    {
      "country_code_id": 183,
      "name": "Saint Vincent and the Grenadines",
      "code": "VC",
      "phone_code": "1784"
    },
    {
      "country_code_id": 184,
      "name": "Samoa",
      "code": "WS",
      "phone_code": "685"
    },
    {
      "country_code_id": 185,
      "name": "San Marino",
      "code": "SM",
      "phone_code": "378"
    },
    {
      "country_code_id": 186,
      "name": "Sao Tome and Principe",
      "code": "ST",
      "phone_code": "238"
    },
    {
      "country_code_id": 187,
      "name": "Saudi Arabia",
      "code": "SA",
      "phone_code": "966"
    },
    {
      "country_code_id": 188,
      "name": "Senegal",
      "code": "SN",
      "phone_code": "221"
    },
    {
      "country_code_id": 189,
      "name": "Serbia and Montenegro",
      "code": "CS",
      "phone_code": "381"
    },
    {
      "country_code_id": 190,
      "name": "Seychelles",
      "code": "SC",
      "phone_code": "248"
    },
    {
      "country_code_id": 191,
      "name": "Sierra Leone",
      "code": "SL",
      "phone_code": "232"
    },
    {
      "country_code_id": 192,
      "name": "Singapore",
      "code": "SG",
      "phone_code": "65"
    },
    {
      "country_code_id": 193,
      "name": "Slovakia",
      "code": "SK",
      "phone_code": "421"
    },
    {
      "country_code_id": 194,
      "name": "Slovenia",
      "code": "SI",
      "phone_code": "386"
    },
    {
      "country_code_id": 195,
      "name": "Solomon Islands",
      "code": "SB",
      "phone_code": "677"
    },
    {
      "country_code_id": 196,
      "name": "Somalia",
      "code": "SO",
      "phone_code": "252"
    },
    {
      "country_code_id": 197,
      "name": "South Africa",
      "code": "ZA",
      "phone_code": "27"
    },
    {
      "country_code_id": 198,
      "name": "South Georgia and the South Sandwich Islands",
      "code": "GS",
      "phone_code": "27"
    },
    {
      "country_code_id": 199,
      "name": "South Korea",
      "code": "KR",
      "phone_code": "82"
    },
    {
      "country_code_id": 200,
      "name": "Spain",
      "code": "ES",
      "phone_code": "34"
    },
    {
      "country_code_id": 201,
      "name": "Sri Lanka",
      "code": "LK",
      "phone_code": "94"
    },
    {
      "country_code_id": 202,
      "name": "Sudan",
      "code": "SD",
      "phone_code": "247"
    },
    {
      "country_code_id": 203,
      "name": "Suriname",
      "code": "SR",
      "phone_code": "597"
    },
    {
      "country_code_id": 204,
      "name": "Svalbard and Jan Mayen",
      "code": "SJ",
      "phone_code": "47"
    },
    {
      "country_code_id": 205,
      "name": "Swaziland",
      "code": "SZ",
      "phone_code": "268"
    },
    {
      "country_code_id": 206,
      "name": "Sweden",
      "code": "SE",
      "phone_code": "46"
    },
    {
      "country_code_id": 207,
      "name": "Switzerland",
      "code": "CH",
      "phone_code": "41"
    },
    {
      "country_code_id": 208,
      "name": "Syria",
      "code": "SY",
      "phone_code": "963"
    },
    {
      "country_code_id": 209,
      "name": "Taiwan",
      "code": "TW",
      "phone_code": "886"
    },
    {
      "country_code_id": 210,
      "name": "Tajikistan",
      "code": "TJ",
      "phone_code": "992"
    },
    {
      "country_code_id": 211,
      "name": "Tanzania",
      "code": "TZ",
      "phone_code": "255"
    },
    {
      "country_code_id": 212,
      "name": "Thailand",
      "code": "TH",
      "phone_code": "66"
    },
    {
      "country_code_id": 213,
      "name": "Togo",
      "code": "TG",
      "phone_code": "228"
    },
    {
      "country_code_id": 214,
      "name": "Tokelau",
      "code": "TK",
      "phone_code": "690"
    },
    {
      "country_code_id": 215,
      "name": "Tonga",
      "code": "TO",
      "phone_code": "676"
    },
    {
      "country_code_id": 216,
      "name": "Trinidad and Tobago",
      "code": "TT",
      "phone_code": "1868"
    },
    {
      "country_code_id": 217,
      "name": "Tunisia",
      "code": "TN",
      "phone_code": "216"
    },
    {
      "country_code_id": 218,
      "name": "Turkey",
      "code": "TR",
      "phone_code": "90"
    },
    {
      "country_code_id": 219,
      "name": "Turkmenistan",
      "code": "TM",
      "phone_code": "993"
    },
    {
      "country_code_id": 220,
      "name": "Turks and Caicos Islands",
      "code": "TC",
      "phone_code": "1649"
    },
    {
      "country_code_id": 221,
      "name": "Tuvalu",
      "code": "TV",
      "phone_code": "688"
    },
    {
      "country_code_id": 222,
      "name": "U.S. Virgin Islands",
      "code": "VI",
      "phone_code": "1"
    },
    {
      "country_code_id": 223,
      "name": "Uganda",
      "code": "UG",
      "phone_code": "256"
    },
    {
      "country_code_id": 224,
      "name": "Ukraine",
      "code": "UA",
      "phone_code": "380"
    },
    {
      "country_code_id": 225,
      "name": "United Arab Emirates",
      "code": "AE",
      "phone_code": "971"
    },
    {
      "country_code_id": 226,
      "name": "United Kingdom",
      "code": "GB",
      "phone_code": "44"
    },
    {
      "country_code_id": 227,
      "name": "United States",
      "code": "US",
      "phone_code": "1"
    },
    {
      "country_code_id": 228,
      "name": "United States Minor Outlying Islands",
      "code": "UM",
      "phone_code": "1"
    },
    {
      "country_code_id": 229,
      "name": "Uruguay",
      "code": "UY",
      "phone_code": "598"
    },
    {
      "country_code_id": 230,
      "name": "Uzbekistan",
      "code": "UZ",
      "phone_code": "998"
    },
    {
      "country_code_id": 231,
      "name": "Vanuatu",
      "code": "VU",
      "phone_code": "678"
    },
    {
      "country_code_id": 232,
      "name": "Vatican",
      "code": "VA",
      "phone_code": "379"
    },
    {
      "country_code_id": 233,
      "name": "Venezuela",
      "code": "VE",
      "phone_code": "58"
    },
    {
      "country_code_id": 234,
      "name": "Vietnam",
      "code": "VN",
      "phone_code": "84"
    },
    {
      "country_code_id": 235,
      "name": "Wallis and Futuna",
      "code": "WF",
      "phone_code": "681"
    },
    {
      "country_code_id": 236,
      "name": "Western Sahara",
      "code": "EH",
      "phone_code": "212"
    },
    {
      "country_code_id": 237,
      "name": "Yemen",
      "code": "YE",
      "phone_code": "967"
    },
    {
      "country_code_id": 238,
      "name": "Zambia",
      "code": "ZM",
      "phone_code": "260"
    },
    {
      "country_code_id": 239,
      "name": "Zimbabwe",
      "code": "ZW",
      "phone_code": "263"
    }
  ],
  "code": 200
}'''));
}
