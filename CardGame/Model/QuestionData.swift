//
//  QuestionData.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 04/07/2024.
//

import Foundation
import SwiftUI


 var quesstionClass: [Questions]  = [
    Questions( question: "Wypowiedz imię osoby z którą ostatnio uprawiał_ś sex.", punishment: 2, points: 1),
    Questions( question: "Masz szczęście! Wskaż jednego gracza, który musi wypić kolejkę. Jeśli tego nie zrobi odpada z gry", punishment: 2, points: 2),
    Questions( question: "Zrób selfie i umieść je na Instagramie z podpisem: Napisz do mnie jeśli Ty też jestś wilgotn_! ", punishment: 1, points: 1),
    Questions( question: "Jeśli Twój telefon dzis zadzwoni, odbierz go i powiedz bez błedu: Pizzeria Apa Papa Pepe, w czym mogę pomóc? Jeśli zrobisz błąd, pijesz kolejkę", punishment: 3, points: 1),
    Questions( question: "Każdy, kto kiedykolwiek uprawiał seks w publicznej toalecie, pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Wymień ubranie z graczem płci przeciwnej na oczach innych graczy. Wybór nalezy do Ciebie", punishment: 1, points: 1),
    Questions(question: "Wypij 1 shota ostrego sosu lub dopij to co gracz po prawej ma w kieliszku. Jeśli gospodarz nie ma ostrego sosu, pije kolejke za ciebie", punishment: 1, points: 1),
    Questions(question: "Dopij to co masz w kieliszku. Jeśli nie masz nic w kieliszku, nalej sobie podwójnego szota", punishment: 0, points: 1),
    Questions(question: "Każdy gracz pije tyle razy ile ma rzeczy położonych na stole. Jeśli nie wykonasz zadania odpadasz z gry", punishment: 0, points: 2),
    Questions(question: "Wypij całą butelkę wody 0.5 l w mniej niż 20 sekund ", punishment: 1, points: 1),
    Questions(question: "Wyśli jednemu z rodziców 12-ste zdjęcie z galeri zdjeć na Twoim telefonie.", punishment: 1, points: 1),
    Questions(question: "Ustaw w telefonie język obcy, który inni gracze wybiorą za Ciebie. Pozostaw jęzk do końca gry", punishment: 2, points: 1),
    Questions(question: "Jaka jest najbardzij bolesna kontuzja jaką miał_ś?", punishment: 1, points: 1),
    Questions(question: "Wykonaj masaz graczowi po Twojej lewej stronie", punishment: 2, points: 1),
    Questions(question: "Zadzwoń do losowej restauracji i zamów jednego dużego bakłażana z dwoma jajkami", punishment: 1, points: 1),
    Questions(question: "Wszyscy wymieniają się miejscami", punishment: 0, points: 1),
    Questions(question: "Wszystkie dziewczyny piją kolejkę", punishment: 1, points: 1),
    Questions(question: "Wymień co najmniej 3 zabawki erotyczne w ciągu 15 sekund", punishment: 1, points: 1),
    Questions(question: "Każdy kto uprawiał sex w ten weekend pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Twerkuj przez 10 sekund", punishment: 1, points: 1),
    Questions(question: "Za kazdym razem gdy wchodzisz do toalety musisz zabrać ze sobą gracza płci przeciwnej", punishment: 2, points: 1),
    Questions(question: "Oblizuj swój palec bardzo namietnie patrząc na gracza na przeciwko Ciebie", punishment: 1, points: 1),
    Questions(question: "Wybierz na telefonie dziesiąty numer z ostatnio wybieranych numerów, zadzwoń i temu, kto odbierze wyjaśni jak działa sztuczne zapłodnienie", punishment: 1, points: 1),
    Questions(question: "Rozbierz się do bielizny i idż do sąsiadów zapytać czy mogą pożyczyć Ci taśmę klejącą. Jeśli nie wykonasz zadania pijesz kolejkę lub opuszczasz grę", punishment: 2, points: 2),
    Questions(question: "Pozwól innym graczom przeglądać Twoją galerię przez 60 sekund. Jeśli nie wykonasz zadania pijesz kolejkę lub odpadzasz z gry", punishment: 2, points: 2),
    Questions(question: "Siłuj się na rękę z graczem po Twojej lewej stronie. Przegrany pije kolejkę ", punishment: 1, points: 1),
    Questions(question: "Każdy kto ma prawo jazdy pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Wykonaj na graczu który siedzi na przeciwko Ciebie 30 sekundowy lap dance", punishment: 2, points: 1),
    Questions(question: "Zachowaj powazną twarz. Każdy gracz spróbuje cie rozsmieszyć w 10 sekund. Jeśli mu się nie uda pije kolejkę. Jeśli się uda, Ty pijesz kolejkę ", punishment: 1, points: 1),
    Questions(question: "Wybierz jeszcze dwóch graczy aby wspólnie stworzyć ludzką piramidę. Jeśli Wam się nie uda, wszyscy pijecie kolejkę", punishment: 1, points: 1),
    Questions(question: "Każdy kto jest wyższy od Ciebie pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Gracze którzy mają puste kieliszki, piją. W przeciwnym razie opuszczają grę", punishment: 2, points: 2),
    Questions(question: "Wybierz gracza który z Tobą wypije kolejke", punishment: 1, points: 1),
    Questions(question: "Spróbuj naśladować robaka", punishment: 2, points: 1),
    Questions(question: "Zadzwoń do jednego z rodziców i powiedz aby przyszedł po Ciebie na izbę zatrzymań ", punishment: 1, points: 1),
    Questions(question: "Wszyscy robicie sobie przerwę tak długą jaką uważacie za stosowną", punishment: 0, points: 0),
    Questions(question: "Z iloma osobami uprawiałeś sex w swoim życiu", punishment: 2, points: 1),
    Questions(question: "Wymień 3 pozycje seksualne", punishment: 2, points: 1),
    Questions(question: "Pozwól dowolnej osobie siedzącej obok Ciebie, wysłaś emoji bakłażana i brzoskwini na dowolny numer z Twojego telefonu ", punishment: 1, points: 1),
    Questions(question: "Wybierz jednego gracza który musi kopnąć Cie w tyłek", punishment: 1, points: 1),
    Questions(question: "Wyśli wiadomość do jednego z rodziców z prośbą o pożyczenie tysiaka i kilofa", punishment: 1, points: 1),
    Questions(question: "Zatańcz z osobą po prawej do piosenki wybranej przez innych", punishment: 1, points: 1),
    Questions(question: "Zadzwon do przyjaciela który miał być tutaj z Tobą. Jeśli nie odbierze pijesz kolejke", punishment: 1, points: 1),
    Questions(question: "Wymień 3 koktajle w ciagu 8  sekund", punishment: 1, points: 1),
    Questions(question: "Która część ciała u płci przeciwnej jest dla Ciebie najbardziej atrakcyjna?", punishment: 2, points: 1),
    Questions(question: "Gracz który jest najstarszy piję kolejkę", punishment: 1, points: 1),
    Questions(question: "Pijesz tyle razy ile tat najmłodszy gracz jest młodszy od Ciebie (maks 5 kolejek)", punishment: 0, points: 1),
    Questions(question: "Zadzwon na losowy numer i postaraj się aby osoba do której dzwonisz rozmawiała z Tobą przez telefon przez ponad dwie minuty. Jesli odłoży słuchawkę przed upływem dwóch minut, pijesz kolejke", punishment: 3, points: 1),
    Questions(question: "Zanim co kolwiek powiesz od teraz do końca gry, musisz najpierw zaszczekac. Za każdym razem kiedy nie zaszczekasz musisz wypic kolejkę", punishment: 1, points: 1),
    Questions(question: "Zrób selfie z koszem na smieci i opublikuj je we wszystkich swoich serwisach społecznościowych", punishment: 1, points: 1),
    Questions(question: "Zdejmi 3 sztuki odzieży", punishment: 1, points: 1),
    Questions(question: "Wypowiedz imie osoby z którą stracił_ dziewictwo", punishment: 1, points: 1),
    Questions(question: "Jeśli spisz nago pijesz kolejkę", punishment: 1, points: 1),
    Questions(question: "Wybierz osobę która przez jakis czas będzie krążyć palcem wokół Twojej brodawki", punishment: 1, points: 1),
    Questions(question: "Zadzwoń do jednego ze swoich rodziców i powiedz że zgłosił_ś się kolejnej edycji X-Factor", punishment: 1, points: 1),
    Questions(question: "Uzywając dowolnego przedmiotu pokaż jak zrobic loda", punishment: 1, points: 1),
    Questions(question: "Na Facebooku zmień status związku na wolny/w związku", punishment: 1, points: 1),
    Questions(question: "Wybuerz gracza z którym chcesz wypijć kolejkę", punishment: 1, points: 1),
    Questions(question: "Zawiąż sobie oczy, obróć się 5 razy. Podczas kręcenia gracze rozejdą sie po pokoju. W chwili kiedy przestajesz się kręcić gracze stają nieruchomo. Pierwszy gracz którego znajdziesz pije kolejkę. Jeśli nie znajdzesz nikogo w ciagu 2 minut Ty pijesz kolejke", punishment: 2, points: 2),
    Questions(question: "Gracz który jest najniższy pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Każdy gracz który kiedykolwiek udawał orgazm pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Graj z zawiązanymi oczami przez 10 minut. Gra toczy się dalej", punishment: 2, points: 1),
    Questions(question: "Każdy kto jest szatynem pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Opublikuj selfi na insta z podpisem: DM ME if you wanna play", punishment: 2, points: 1),
    Questions(question: "Wypij całe piwo w 15 sekund, jeśli nie zdążysz musisz otworzyć jeszcze jedno. Jeśli nie wykonasz zadania pijesz kolejkę lub odpadasz z gry", punishment: 3, points: 2),
    Questions(question: "Wybierz losowo numer na telefonie i zaczni śpwewać piosenke", punishment: 1, points: 1),
    Questions(question: "Zadzwoń do przypadkowej osoby z Twojej ksiązki telefonicznej na komórce i powiedz jej że ma: Big Dick Energy", punishment: 2, points: 1),
    Questions(question: "Wybierz osobę która musi pić za każdym razem gdy Ty pijesz ale nie taką samą ilość szotów", punishment: 0, points: 1),
    Questions(question: "Napisz wiadomośc miłosną do osoby która Ci się podoba", punishment: 1, points: 1),
    Questions(question: "Jeśli robił_ś siku pod prysznicem pijesz kolejkę", punishment: 1, points: 1),
    Questions(question: "Jeśli był_ś w klubie ze striptizem, pijesz kolejkę", punishment: 2, points: 1),
    Questions(question: "Napełni zlew zimną wodą i zanurz w niej głowe na 30 sekund", punishment: 1, points: 1),
    Questions(question: "Od teraz czytasz wszystkie wiadomości na głos które otrzymasz w trakcie gry", punishment: 1, points: 1),
    Questions(question: "Wykonaj 6 fikołków do tyłu", punishment: 2, points: 1),
    Questions(question: "Wykonaj około 10 obrotów i spróbuj iść po lini prostej", punishment: 2, points: 1),
    Questions(question: "Stwórz z kimś parę i wobraźcie sobie że jesteście szczęśliwą parą która spodziewa się dziecka. Odtwórzcie 2 minutową scenke porodu", punishment: 2, points: 1),
    Questions(question: "Wyśli jednemu z graczy zdjęcie penisa. Jeśli się nie zgadzasz pijesz kolejkę lub odpadasz z gry", punishment: 2, points: 2),
    Questions(question: "Po uzgodnieniu z innym graczami zadzwoń do osoby i spróbuj namówic ją na sex z Tobą", punishment: 1, points: 1),
    Questions(question: "Od teraz gracz po Twojej lewej stronie jest Twoim mistrzem. Zrób jedną rzecz którą Ci powie", punishment: 1, points: 1),
    Questions(question: "Wybierz jedną osobę z grupy i rozsuń jej rozporek zębami. Jeśli wybrany gracz nie wykona zadania oboje pijecie kolejkę lub ten gracz który nie wykonał zadania odpada z gry", punishment: 2, points: 2),
    Questions(question: "Zadzwoń do pizzeri i zapytaj czy mogą Ci upiec pizzę w kształcie penisa", punishment: 1, points: 1),
    Questions(question: "Zadzwoń pod losowy numer i przekonuj że to ta osoba do Ciebie zadzwoniła a nie Ty do niej", punishment: 2, points: 1),
    Questions(question: "Możesz zrobić jedną losową przerwę w dowolnej chwili ", punishment: 0, points: 0),
    Questions(question: "Wszyscy faceci piją kolejkę", punishment: 1, points: 1),
    Questions(question: "Zadzwoń do jednego ze swoich rodziców i powiedz że kochasz go z całego serca", punishment: 1, points: 1),
    Questions(question: "Wybierz jednego gracza do gry w (Kamień Papier Nożyce). Gracz który wygra wymysla zadanie dla drugiego gracza lub pije kolejkę", punishment: 2, points: 1),
    Questions(question: "Napisz do rodzica: Mam 2 gramy za stówę, nadal zainteresowany?", punishment: 1, points: 1),
    Questions(question: "Napisz do ostatniego swojego byłego: Nadal Cię kocham", punishment: 1, points: 1),
    Questions(question: "Napisz wiadomość na ostatni numer z którego dzwoniono: Jaki masz problem?", punishment: 1, points: 1),
    Questions(question: "Dowolnemu graczowi zadaj pytanie dotyczące Twojej osoby typu (prawda lub kłamstwo). Jeśli odpowie dobrze Ty pijesz, jeśli źle piej on/ona", punishment: 1, points: 1),
    Questions(question: "Opierając się o ścianę do góry nogami, spróbuj twerkować", punishment: 3, points: 1),
    Questions(question: "Zrób siku do zlewu. Jeśli nie wykonasz zadania pijesz kolejkę lub odpadasz z gry", punishment: 2, points: 2),
    Questions(question: "Odwróć telefon ekranem do dołu na czas gry. Za każdym razem gdy obrócisz telefon pijesz kolejkę", punishment: 0, points: 1),
    Questions(question: "Gracz który jest najwyższy pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Obróć się 12 razy, zamkni oczy i stań prosto. Za każdy zrobiony krok pijesz kolejkę. Jeśli utrzymasz równowage pozostajesz bez kolejki", punishment: 0, points: 1),
    Questions(question: "Napisz do swojego obeznego/byłego. Jeśli nie ma takij osoby gra toczy się dalej", punishment: 1, points: 1),
    Questions(question: "Jeśli kiedykolwiek płakał_ś podczas filmu, pijesz kolejkę", punishment: 1, points: 1),
    Questions(question: "Usiadź na kolanach gracza po prawej stronie i siedź tak przez całą następną rundę.", punishment: 2, points: 1),
    Questions(question: "Wypij body shota z graczem po Twojej prawej stronie", punishment: 2, points: 1),
    Questions(question: "Jeśli był_ś na randce za pośrednictwem serwisu randkowego, pijesz kolejkę", punishment: 1, points: 1),
    Questions(question: "Przerwa dla wszystkich", punishment: 0, points: 0),
    Questions(question: "Opisz swoją najbardzej zawstydzającą sytuacje podczas seksu", punishment: 2, points: 1),
    Questions(question: "Możesz raz opuścić kolejkę kiedy chcesz", punishment: 0, points: 0),
    Questions(question: "Zadzwoń do swojego byłego i powiedz że chcesz abyście wrócili do siebie. Jeśli nie wykonasz zadania pijesz lub odpadasz z gry", punishment: 2, points: 2),
    Questions(question: "Grupa przeczyta Twoje 3 ostatnie wiadomości", punishment: 2, points: 1),
    Questions(question: "Jeśli masz jakieś złe doświadczenia z policja, ujawni je", punishment: 1, points: 1),
    Questions(question: "Przez resztę gry zdejmuj jedną sztuke ubrania za każde przekleństwo które wypowiesz lub pij za każdym razem", punishment: 1, points: 1),
    Questions(question: "Spróbuj stanąć na rękach przez 15 sekund", punishment: 2, points: 1),
    Questions(question: "Zejdz do pozycji psa i postaw sobie szklankę w dolnej części pleców. Twerkując, obróć szklankę o 180 stopni, masz 3 próby. Jesli nie wykonasz zadania pijesz kolejkę lub odpadasz", punishment: 2, points: 2),
    Questions(question: "Każdy gracz który ma przy sobie prezerwatywę pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Każdy kto nosił aparat ortodontyczny pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Po kolei wypowiadajcie słowa które się ze soba rymują. Każdy kto nie wymyśli w ciągu 5 sekund słowa pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Dotknicie się nosami z graczem po Twojej prawej stronie nie tracąc kontaktu wzrokowego przez 1 min. W przeciwnym razie oboje pijecie", punishment: 1, points: 1),
    Questions(question: "Wypij szota od najpiękniejszejo osoby w pokoju. jeśli nie wykonasz zadania pijesz lub odpadasz z gry", punishment: 3, points: 2),
    Questions(question: "Napisz 4 dowolne litery na plecach osoby po Twojej lewej stronie Jeśli nie odgadnie wszystkich liter, pije kolejkę. Jeśli je odgadnie pijesz Ty", punishment: 2, points: 1),
    Questions(question: "Każdy kto pali, pije", punishment: 1, points: 1),
    Questions(question: "Wymień co najmniej 3 rodzaje marihuany w ciągu 15 sekund ", punishment: 1, points: 1),
    Questions(question: "Otwórz drzw wejściowe i krzykni: Kocham anal. Do tego musisz wypić kolejkę. Jeśli nie wykonasz zadania opdpadasz z gry", punishment: 1, points: 2),
    Questions(question: "Wybierz osobę która poliże Twoją twarz", punishment: 2, points: 1),
    Questions(question: "Gracz który posiada najwięcej obserwujących na insta, pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Napisz wiadomość na wymyślony numer którego nie masz w telefonie: Siema, jak się masz?", punishment: 1, points: 1),
    Questions(question: "Opowiedz graczom o tym jak stracił_ś dziewictwo", punishment: 1, points: 1),
    Questions(question: "Zadzwoń pod losowy numer i zaczni się kłocić że ta osoba powinna Cie zabrać spod domu jakiś czas temu", punishment: 2, points: 1),
    Questions(question: "Pijesz tyle razy o ile najstarszy gracz jest starszy od Ciebie", punishment: 0, points: 1),
    Questions(question: "Wypij jednego szota podczas gdy inny gracz będzie Cię trzymał za nos", punishment: 2, points: 1),
    Questions(question: "Usiadź w koszu na śmieci i pozwól zrobić sobie zdjęcie  i opublikować z podpisem #siedzigdzietrzeba", punishment: 2, points: 1),
    Questions(question: "Weź prezerwatywę od jednego z graczy i napompuj ją tak aby pękła", punishment: 1, points: 1),
    Questions(question: "Gracz który jest najmłodszy pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Każdy gracz który kiedykolwiek używał zabawki erotycznej pije kolejkę", punishment: 1, points: 1),
    Questions(question: "Jesli obiajłeś się dzis w pracy pijesz", punishment: 1, points: 1),
    Questions(question: "Przez 30 sekund tancz na stole do utworu wybranego przez graczy lub opuść grę", punishment: 0, points: 2),
    Questions(question: "Jakie jest najgorsze miejsce w którym uprawiał_ś seks", punishment: 1, points: 1),
    Questions(question: "Poproś gracza po prawej stronie aby napisałe na Facebooko/instagramie co uzna za (nie)stosowne", punishment: 1, points: 1),
    Questions(question: "Niech osoba po Twojej lewej stronie uderzy Cię z liścia", punishment: 1, points: 1),
    Questions(question: "Osoba po Twojej lewej stronie musi zrobić pompki. Po kazdych 15s-stu wypij szota", punishment: 0, points: 1),
    Questions(question: "Usiądź na podłodze podczas jednej rundy gry", punishment: 1, points: 1),
    Questions(question: "Polub 3 zdjecia swojego crusha", punishment: 2, points: 1),
    Questions(question: "Jedna przerwa w dowolnej chwili gry", punishment: 0, points: 0),
    Questions(question: "Pijesz lub odpadasz", punishment: 3, points: 2),
    Questions(question: "Jeśli kiedykolwiek uorawiałeś seks przez telefon/kamerkę pijesz kolejkę", punishment: 1, points: 1),
    Questions(question: "Wymień wszystkie narkotyki które zażywałeś", punishment: 1, points: 1),
    Questions(question: "Udawaj przez 20 sekund że się masturbujesz", punishment: 2, points: 1),
    Questions(question: "Wgryź się w nogę gracza po prawej stronie", punishment: 1, points: 1),
    Questions(question: "Wszyscy piją kolejkę", punishment: 1, points: 1),
    Questions(question: "Napełni usta wodą i powiedz cały alfabet. Jeśli choć trochę się oblejesz pijesz kolejke", punishment: 1, points: 1),
    Questions(question: "Grupa musi wymyślić Ci wyzwanie które musisz z powodzeniem wykonać", punishment: 2, points: 1)
    ]

