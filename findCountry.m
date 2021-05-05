% this function lets u find the number of the country (when plotting stuff)
function number=findCountry(country)
countries={'Country',
'Afghanistan',
'Albania',
'Algeria',
'American Samoa',
'Andorra',
'Angola',
'Antigua and Barbuda',
'Arab World',
'Argentina',
'Armenia',
'Aruba',
'Australia',
'Austria',
'Azerbaijan',
'Bahamas, The',
'Bahrain',
'Bangladesh',
'Barbados',
'Belarus',
'Belgium',
'Belize',
'Benin',
'Bermuda',
'Bhutan',
'Bolivia',
'Bosnia and Herzegovina',
'Botswana',
'Brazil',
'British Virgin Islands',
'Brunei Darussalam',
'Bulgaria',
'Burkina Faso',
'Burundi',
'Cabo Verde',
'Cambodia',
'Cameroon',
'Canada',
'Caribbean small states',
'Cayman Islands',
'Central African Republic',
'Central Europe and the Baltics',
'Chad',
'Channel Islands',
'Chile',
'China',
'Colombia',
'Comoros',
'Congo, Dem. Rep.',
'Congo, Rep.',
'Costa Rica',
'Cote dIvoire',
'Croatia',
'Cuba',
'Curacao',
'Cyprus',
'Czech Republic',
'Denmark',
'Djibouti',
'Dominica',
'Dominican Republic',
'Ecuador',
'Egypt, Arab Rep.',
'El Salvador',
'Equatorial Guinea',
'Eritrea',
'Estonia',
'Eswatini',
'Ethiopia',
'Faroe Islands',
'Fiji',
'Finland',
'France',
'French Polynesia',
'Gabon',
'Gambia, The',
'Georgia',
'Germany',
'Ghana',
'Gibraltar',
'Greece',
'Greenland',
'Grenada',
'Guam',
'Guatemala',
'Guinea',
'Guinea-Bissau',
'Guyana',
'Haiti',
'Honduras',
'Hong Kong SAR, China',
'Hungary',
'Iceland',
'India',
'Indonesia',
'Iran, Islamic Rep.',
'Iraq',
'Ireland',
'Isle of Man',
'Israel',
'Italy',
'Jamaica',
'Japan',
'Jordan',
'Kazakhstan',
'Kenya',
'Kiribati',
'Korea, Dem. People’s Rep.',
'Korea, Rep.',
'Kosovo',
'Kuwait',
'Kyrgyz Republic',
'Lao PDR',
'Latvia',
'Least developed countries: UN classification',
'Lebanon',
'Lesotho',
'Liberia',
'Libya',
'Liechtenstein',
'Lithuania',
'Luxembourg',
'Macao SAR, China',
'Madagascar',
'Malawi',
'Malaysia',
'Maldives',
'Mali',
'Malta',
'Marshall Islands',
'Mauritania',
'Mauritius',
'Mexico',
'Micronesia, Fed. Sts.',
'Moldova',
'Monaco',
'Mongolia',
'Montenegro',
'Morocco',
'Mozambique',
'Myanmar',
'Namibia',
'Nauru',
'Nepal',
'Netherlands',
'New Caledonia',
'New Zealand',
'Nicaragua',
'Niger',
'Nigeria',
'North Macedonia',
'Northern Mariana Islands',
'Norway',
'Oman',
'Other small states',
'Pacific island small states',
'Pakistan',
'Palau',
'Panama',
'Papua New Guinea',
'Paraguay',
'Peru',
'Philippines',
'Poland',
'Portugal',
'Puerto Rico',
'Qatar',
'Romania',
'Russian Federation',
'Rwanda',
'Samoa',
'San Marino',
'Sao Tome and Principe',
'Saudi Arabia',
'Senegal',
'Serbia',
'Seychelles',
'Sierra Leone',
'Singapore',
'Sint Maarten (Dutch part)',
'Slovak Republic',
'Slovenia',
'Small states',
'Solomon Islands',
'Somalia',
'South Africa',
'South Asia',
'South Asia (IDA & IBRD)',
'South Sudan',
'Spain',
'Sri Lanka',
'St. Kitts and Nevis',
'St. Lucia',
'St. Martin (French part)',
'St. Vincent and the Grenadines',
'Sudan',
'Suriname',
'Sweden',
'Switzerland',
'Syrian Arab Republic',
'Tajikistan',
'Tanzania',
'Thailand',
'Timor-Leste',
'Togo',
'Tonga',
'Trinidad and Tobago',
'Tunisia',
'Turkey',
'Turkmenistan',
'Turks and Caicos Islands',
'Tuvalu',
'Uganda',
'Ukraine',
'United Arab Emirates',
'United Kingdom',
'United States',
'Uruguay',
'Uzbekistan',
'Vanuatu',
'Venezuela, RB',
'Vietnam',
'Virgin Islands (U.S.)',
'West Bank and Gaza',
'World',
'Yemen, Rep.',
'Zambia',
'Zimbabwe',
'East Asia & Pacific',
'East Asia & Pacific (excluding high income)',
'East Asia & Pacific (IDA & IBRD countries)',
'Europe & Central Asia',
'Europe & Central Asia (excluding high income)',
'Europe & Central Asia (IDA & IBRD countries)',
'Latin America & Caribbean',
'Latin America & Caribbean (excluding high income)',
'Latin America & the Caribbean (IDA & IBRD countries)',
'Middle East & North Africa',
'Middle East & North Africa (excluding high income)',
'Middle East & North Africa (IDA & IBRD countries)',
'Sub-Saharan Africa',
'Sub-Saharan Africa (excluding high income)',
'Sub-Saharan Africa (IDA & IBRD countries)',
'Early-demographic dividend',
'Fragile and conflict affected situations',
'Heavily indebted poor countries (HIPC)',
'IBRD only',
'IDA & IBRD total',
'IDA blend',
'IDA only',
'Late-demographic dividend',
'Low & middle income',
'Low income',
'Lower middle income',
'Middle income',
'Pre-demographic dividend',
'Upper middle income'};
number=1;
for iCnt=2:size(countries)
    if strcmp(countries(iCnt),country)
        number= iCnt;
    end
end
end