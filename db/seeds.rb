first_names_array = %w{ Anna Maria Katarzyna Małgorzata Agnieszka Krystyna Barbara Ewa Elżbieta Zofia Janina Teresa Joanna Magdalena Monika Jadwiga Danuta Irena Halina Helena Beata Aleksandra Marta Dorota Marianna Grażyna Jolanta Stanisława Iwona Karolina Bożena Urszula Justyna Renata Alicja Paulina Sylwia Natalia Wanda Agata Aneta Izabela Ewelina Marzena Wiesława Genowefa Patrycja Kazimiera Edyta Stefania }
last_names_array = %w{ Nowak Kowalski Wiśniewski Dąbrowski Lewandowski Wójcik Kamiński Kowalczyk Zieliński Szymański Woźniak Kozłowski Jankowski Wojciechowski Kwiatkowski Kaczmarek Mazur Krawczyk Piotrowski Grabowski Nowakowski Pawłowski Michalski Nowicki Adamczyk Dudek Zając Wieczorek Jabłoński Król Majewski Olszewski Jaworski Wróbel Malinowski Pawlak Witkowski Walczak Stępień Górski Rutkowski Michalak Sikora Ostrowski Baran Duda Szewczyk Tomaszewski Pietrzak Marciniak Wróblewski Zalewski Jakubowski Jasiński Zawadzki Sadowski Bąk Chmielewski Włodarczyk Borkowski Czarnecki Sawicki Sokołowski Urbański Kubiak Maciejewski Szczepański Kucharski Wilk Kalinowski Lis Mazurek Wysocki Adamski Kaźmierczak Wasilewski Sobczak Czerwiński Andrzejewski Cieślak Głowacki Zakrzewski Kołodziej Sikorski Krajewski Gajewski Szymczak Szulc Baranowski Laskowski Brzeziński Makowski Ziółkowski Przybylski }
nicknames_array = %w{ Kaczafi Kim Dzong Yar Kacz Hakosław Kłamczyński Świrosław Kaczysław Kaczka Dziwaczka Kartofel Pinokio Mesjasz Zbawiciel Kartoflo Pistolero Pchła Szachrajka Piroman Jarosław I Obrażony Kurduplo Directore Psychotropek Geniusz Mazowsza Dziewica Żoliborska Karzeł Żoliborski Gabon Jarosław Haczyński Wielki Motorniczy IV RP Pierwszy Saper Nowy Zbawiciel Wolski Piccola Pistola Mały Pistolecik Mały Rycerz Wuc Fuhrer Siwy Wariat Kaczy syn﻿}

Member.delete_all

def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

100.times do |i|
  Member.create(
    first_name: first_names_array.sample, last_name: last_names_array.sample, nickname: nicknames_array.sample,
    date_birth: time_rand, date_joined: time_rand, belt: rand(1..5), stripes: rand(1...4),
    description: "Losowy typ nr: #{i}"
    )
end
