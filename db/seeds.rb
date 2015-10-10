# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cathegory.delete_all

Cathegory.create!(id: 1, name: 'Electronics', image: 'Electronics.png')
Cathegory.create!(id: 2, name: 'Children', image: 'Children.png')
Cathegory.create!(id: 3, name: 'Machines', image: 'Machines.png')
Cathegory.create!(id: 4, name: 'Home&Gargen', image: 'HomeGarden.png')
Cathegory.create!(id: 5, name: 'Tourism', image: 'Tourism.png')
Cathegory.create!(id: 6, name: 'Realty', image: 'Realty.png')
Cathegory.create!(id: 7, name: 'Furniture', image: 'Furniture.png')
Cathegory.create!(id: 8, name: 'Antiquarian', image: 'Antiquarian.png')
Cathegory.create!(id: 9, name: 'Musical instruments', image: 'MusicalInstruments.png')
Cathegory.create!(id: 10, name: 'Weapons', image: 'Weapons.png')
Cathegory.create!(id: 11, name: 'Collectibles', image: 'Collectibles.png')
Cathegory.create!(id: 12, name: 'Other', image: 'Other.png')


Country.delete_all

#A

Country.create!(id: 1, name: 'Afghanistan')
Country.create!(id: 2, name: 'Albania')
Country.create!(id: 3, name: 'Algeria')
Country.create!(id: 4, name: 'Andorra')
Country.create!(id: 5, name: 'Angola')
Country.create!(id: 6, name: 'Antigua and Barbuda')
Country.create!(id: 7, name: 'Argentina')
Country.create!(id: 8, name: 'Armenia')
Country.create!(id: 9, name: 'Aruba')
Country.create!(id: 10, name: 'Australia')
Country.create!(id: 11, name: 'Austria')
Country.create!(id: 12, name: 'Azerbaijan')

#B

Country.create!(id: 13, name: 'Bahamas')
Country.create!(id: 14, name: 'Bahrain')
Country.create!(id: 15, name: 'Bangladesh')
Country.create!(id: 16, name: 'Barbados')
Country.create!(id: 17, name: 'Belarus')
Country.create!(id: 18, name: 'Belgium')
Country.create!(id: 19, name: 'Belize')
Country.create!(id: 20, name: 'Benin')
Country.create!(id: 21, name: 'Bhutan')
Country.create!(id: 22, name: 'Bolivia')
Country.create!(id: 23, name: 'Bosnia and Herzegovina')
Country.create!(id: 24, name: 'Botswana')
Country.create!(id: 25, name: 'Brazil')
Country.create!(id: 26, name: 'Brunei ')
Country.create!(id: 27, name: 'Bulgaria')
Country.create!(id: 28, name: 'Burkina Faso')
Country.create!(id: 29, name: 'Burma')
Country.create!(id: 30, name: 'Burundi')

#C

Country.create!(id: 31, name: 'Cambodia')
Country.create!(id: 32, name: 'Cameroon')
Country.create!(id: 33, name: 'Canada')
Country.create!(id: 34, name: 'Cape Verde')
Country.create!(id: 35, name: 'Central African Republic')
Country.create!(id: 36, name: 'Chad')
Country.create!(id: 37, name: 'Chile')
Country.create!(id: 38, name: 'China')
Country.create!(id: 39, name: 'Colombia')
Country.create!(id: 40, name: 'Comoros')
Country.create!(id: 41, name: 'Congo')
Country.create!(id: 42, name: 'Costa Rica')
Country.create!(id: 43, name: "Cote d'Ivoire")
Country.create!(id: 44, name: 'Croatia')
Country.create!(id: 45, name: 'Cuba')
Country.create!(id: 46, name: 'Curacao')
Country.create!(id: 47, name: 'Cyprus')
Country.create!(id: 48, name: 'Czech Republic')

#D

Country.create!(id: 49, name: 'Denmark')
Country.create!(id: 50, name: 'Djibouti')
Country.create!(id: 51, name: 'Dominica')
Country.create!(id: 52, name: 'Dominican Republic')

#E

Country.create!(id: 53, name: 'East Timor')
Country.create!(id: 54, name: 'Ecuador')
Country.create!(id: 55, name: 'Egypt')
Country.create!(id: 56, name: 'El Salvador')
Country.create!(id: 57, name: 'Equatorial Guinea')
Country.create!(id: 58, name: 'Eritrea')
Country.create!(id: 59, name: 'Estonia')
Country.create!(id: 60, name: 'Ethiopia')

#F

Country.create!(id: 61, name: 'Fiji')
Country.create!(id: 62, name: 'Finland')
Country.create!(id: 63, name: 'France')

#G

Country.create!(id: 64, name: 'Gabon')
Country.create!(id: 65, name: 'Gambia')
Country.create!(id: 66, name: 'Georgia')
Country.create!(id: 67, name: 'Germany')
Country.create!(id: 68, name: 'Ghana')
Country.create!(id: 69, name: 'Greece')
Country.create!(id: 70, name: 'Grenada')
Country.create!(id: 71, name: 'Guatemala')
Country.create!(id: 72, name: 'Guinea')
Country.create!(id: 73, name: 'Guinea-Bissau')
Country.create!(id: 74, name: 'Guyana')

#H

Country.create!(id: 75, name: 'Haiti')
Country.create!(id: 76, name: 'Holy See')
Country.create!(id: 77, name: 'Honduras')
Country.create!(id: 78, name: 'Hong Kong')
Country.create!(id: 79, name: 'Hungary')


#I

Country.create!(id: 80, name: 'Iceland')
Country.create!(id: 81, name: 'India')
Country.create!(id: 82, name: 'Indonesia')
Country.create!(id: 83, name: 'Iran')
Country.create!(id: 84, name: 'Iraq')
Country.create!(id: 85, name: 'Ireland')
Country.create!(id: 86, name: 'Israel')
Country.create!(id: 87, name: 'Italy')



#J

Country.create!(id: 88, name: 'Jamaica')
Country.create!(id: 89, name: 'Japan')
Country.create!(id: 90, name: 'Jordan')


#K

Country.create!(id: 91, name: 'Kazakhstan')
Country.create!(id: 92, name: 'Kenya')
Country.create!(id: 93, name: 'Kiribati')
Country.create!(id: 94, name: 'Korea, North')
Country.create!(id: 95, name: 'Korea, South')
Country.create!(id: 96, name: 'Kosovo')
Country.create!(id: 97, name: 'Kuwait')
Country.create!(id: 98, name: 'Kyrgyzstan')

#L

Country.create!(id: 99, name: 'Laos')
Country.create!(id: 100, name: 'Latvia')
Country.create!(id: 101, name: 'Lebanon')
Country.create!(id: 102, name: 'Lesotho')
Country.create!(id: 103, name: 'Liberia')
Country.create!(id: 104, name: 'Libya')
Country.create!(id: 105, name: 'Liechtenstein')
Country.create!(id: 106, name: 'Lithuania')
Country.create!(id: 107, name: 'Luxembourg')

#M

 

Country.create!(id: 108, name: 'Macau')
Country.create!(id: 109, name: 'Macedonia')
Country.create!(id: 110, name: 'Madagascar')
Country.create!(id: 111, name: 'Malawi')
Country.create!(id: 112, name: 'Malaysia')
Country.create!(id: 113, name: 'Maldives')
Country.create!(id: 114, name: 'Mali')
Country.create!(id: 115, name: 'Malta')
Country.create!(id: 116, name: 'Marshall Islands')
Country.create!(id: 117, name: 'Mauritania')
Country.create!(id: 118, name: 'Mauritius')
Country.create!(id: 119, name: 'Mexico')
Country.create!(id: 120, name: 'Micronesia')
Country.create!(id: 121, name: 'Moldova')
Country.create!(id: 122, name: 'Monaco')
Country.create!(id: 123, name: 'Mongolia')
Country.create!(id: 124, name: 'Montenegro')
Country.create!(id: 125, name: 'Morocco')
Country.create!(id: 126, name: 'Mozambique')


#N
Country.create!(id: 127, name: 'Namibia')
Country.create!(id: 128, name: 'Nauru')
Country.create!(id: 129, name: 'Nepal')
Country.create!(id: 130, name: 'Netherlands')
Country.create!(id: 131, name: 'Netherlands Antilles')
Country.create!(id: 132, name: 'New Zealand')
Country.create!(id: 133, name: 'Nicaragua')
Country.create!(id: 134, name: 'Niger')
Country.create!(id: 135, name: 'Nigeria')
Country.create!(id: 136, name: 'North Korea')
Country.create!(id: 137, name: 'Norway')


#O
Country.create!(id: 138, name: 'Oman')

 
#P
Country.create!(id: 139, name: 'Pakistan')
Country.create!(id: 140, name: 'Palau')
Country.create!(id: 141, name: 'Palestinian Territories')
Country.create!(id: 142, name: 'Panama')
Country.create!(id: 143, name: 'Papua New Guinea')
Country.create!(id: 144, name: 'Paraguay')
Country.create!(id: 145, name: 'Peru')
Country.create!(id: 146, name: 'Philippines')
Country.create!(id: 147, name: 'Poland')
Country.create!(id: 148, name: 'Portugal')

#Q
Country.create!(id: 149, name: 'Qatar')

 


#R
Country.create!(id: 150, name: 'Romania')
Country.create!(id: 151, name: 'Russia')
Country.create!(id: 152, name: 'Rwanda')

#Top of Page

#S
Country.create!(id: 153, name: 'Saint Kitts and Nevis')
Country.create!(id: 154, name: 'Saint Lucia')
Country.create!(id: 155, name: 'Saint Vincent')
Country.create!(id: 156, name: 'Samoa ')
Country.create!(id: 157, name: 'San Marino')
Country.create!(id: 158, name: 'Sao Tome and Principe')
Country.create!(id: 159, name: 'Saudi Arabia')
Country.create!(id: 160, name: 'Senegal')
Country.create!(id: 161, name: 'Serbia')
Country.create!(id: 162, name: 'Seychelles')
Country.create!(id: 163, name: 'Sierra Leone')
Country.create!(id: 164, name: 'Singapore')
Country.create!(id: 165, name: 'Sint Maarten')
Country.create!(id: 166, name: 'Slovakia')
Country.create!(id: 167, name: 'Slovenia')
Country.create!(id: 168, name: 'Solomon Islands')
Country.create!(id: 169, name: 'Somalia')
Country.create!(id: 170, name: 'South Africa')
Country.create!(id: 171, name: 'South Korea')
Country.create!(id: 172, name: 'South Sudan')
Country.create!(id: 173, name: 'Spain ')
Country.create!(id: 174, name: 'Sri Lanka')
Country.create!(id: 175, name: 'Sudan')
Country.create!(id: 176, name: 'Suriname')
Country.create!(id: 178, name: 'Swaziland ')
Country.create!(id: 179, name: 'Sweden')
Country.create!(id: 180, name: 'Switzerland')
Country.create!(id: 181, name: 'Syria')


#T
 

Country.create!(id: 182, name: 'Taiwan')
Country.create!(id: 183, name: 'Tajikistan')
Country.create!(id: 184, name: 'Tanzania')
Country.create!(id: 185, name: 'Thailand ')
Country.create!(id: 186, name: 'Timor-Leste')
Country.create!(id: 187, name: 'Togo')
Country.create!(id: 188, name: 'Tonga')
Country.create!(id: 189, name: 'Trinidad and Tobago')
Country.create!(id: 190, name: 'Tunisia')
Country.create!(id: 191, name: 'Turkey')
Country.create!(id: 192, name: 'Turkmenistan')
Country.create!(id: 193, name: 'Tuvalu')

#U
Country.create!(id: 194, name: 'Uganda')
Country.create!(id: 195, name: 'Ukraine')
Country.create!(id: 196, name: 'United Arab Emirates')
Country.create!(id: 197, name: 'United Kingdom')
Country.create!(id: 198, name: 'Uruguay')
Country.create!(id: 199, name: 'Uzbekistan')



 

#V
Country.create!(id: 200, name: 'Vanuatu')
Country.create!(id: 201, name: 'Venezuela')
Country.create!(id: 202, name: 'Vietnam')


#Y
Country.create!(id: 203, name: 'Yemen')

#Z
Country.create!(id: 204, name: 'Zambia')
Country.create!(id: 205, name: 'Zimbabwe')

