//
//  QuestionModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 04/07/2024.
//

import Foundation

struct QuestionsModel: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var  question: String
    var  punishment: Int
    var  points: Int
    var  isHard: Bool
}

class QuestionViewModel: ObservableObject {

    var questions: [QuestionsModel] = [
        
        QuestionsModel(
            question: "Powiedz, kto Twoim zdaniem jest największym podrywaczem w grupie! Jeśli nie chcesz odpowiedzieć, pij kolejkę.",
            punishment: 1,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Masz odwagę? Opowiedz swoją najbardziej żenującą historię z dzieciństwa. Jeśli odmówisz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które robisz przed snem. Jeśli skłamiesz, odpadasz z rundy!",
            punishment: 1,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Przyznaj się, kogo z obecnych najbardziej stalkowałeś/aś na mediach społecznościowych. Jeśli pominiesz prawdę, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Podaj swoją ulubioną piosenkę guilty pleasure i zaśpiewaj refren! Jeśli nie zaśpiewasz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swojej pierwszej randce. Jeśli nie chcesz, musisz wypić dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę w grupie, z którą wybrałbyś się na bezludną wyspę. Jeśli nie odpowiesz, pij trzy razy!",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zdradź największą tajemnicę, jaką kiedykolwiek ukrywałeś/aś przed rodzicami. Jeśli nie chcesz, pij cztery razy.",
            punishment: 4,
            points: 5,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Masz 30 sekund, żeby wymienić pięć gatunków zwierząt na literę „S”. Jeśli nie dasz rady, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Kto Twoim zdaniem w grupie ma najlepsze poczucie humoru? Jeśli nie odpowiesz, pij kolejkę.",
            punishment: 1,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Jaka jest Twoja ulubiona przekąska o północy? Jeśli nie powiesz, pij kolejkę.",
            punishment: 1,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Kto w grupie ma najładniejszy uśmiech? Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy filmy, które mógłbyś oglądać w nieskończoność. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaki był Twój pierwszy pseudonim w internecie. Jeśli go nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Jaki jest Twój ulubiony kolor skarpetek? Jeśli nie odpowiesz, pij kolejkę.",
            punishment: 1,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które zawsze masz przy sobie. Jeśli nie możesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, która według Ciebie najlepiej tańczy. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zatańcz 10 sekund do wybranej piosenki. Jeśli nie zatańczysz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień swoje ulubione śniadanie. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o ostatnim serialu, który binge-watchowałeś. Jeśli nie chcesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień swoje trzy ulubione emotikony. Jeśli nie chcesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zaśpiewaj fragment swojej ulubionej piosenki. Jeśli nie zaśpiewasz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaką supermoc chciałbyś mieć. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, z którą najchętniej poszedłbyś na koncert. Jeśli nie odpowiesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Jaka była Twoja najdziwniejsza potrawa, którą kiedykolwiek jadłeś? Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz, jaki był Twój pierwszy telefon. Jeśli nie pamiętasz, pij kolejkę.",
            punishment: 1,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Kto w grupie ma najlepszą fryzurę? Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy miejsca, które chcesz odwiedzić. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaki jest Twój ulubiony napój. Jeśli nie zdradzisz, pij kolejkę.",
            punishment: 1,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zaśpiewaj alfabet od końca. Jeśli nie potrafisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które robisz po przebudzeniu. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, z którą chciałbyś zagrać w grę komputerową. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień swoje trzy ulubione aplikacje. Jeśli nie możesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swojej ulubionej zabawie z dzieciństwa. Jeśli nie chcesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Z kim w tej grupie umówiłbyś się na randkę? Jeśli nie odpowiesz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, czy kiedykolwiek podkochiwałeś się w kimś z obecnych. Jeśli nie chcesz zdradzić, pij cztery razy.",
            punishment: 4,
            points: 5,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swojej najgorszej randce. Jeśli nie chcesz się podzielić, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Kto w tej grupie jest według Ciebie najbardziej tajemniczy? Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja największa tajemnica, której nigdy nikomu nie powiedziałeś. Jeśli nie chcesz, pij cztery razy.",
            punishment: 4,
            points: 5,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Wymień osobę, której sekret poznałeś, ale nigdy go nie zdradziłeś. Jeśli nie powiesz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, czy kiedykolwiek zrobiłeś coś naprawdę głupiego, będąc zakochanym. Jeśli nie chcesz zdradzić, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Przyznaj się, czy kiedyś udawałeś chorobę, by uniknąć czegoś ważnego. Jeśli tak, opowiedz szczegóły lub pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Z kim w grupie najchętniej poszedłbyś na imprezę tylko we dwoje? Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Wymień najbardziej szaloną rzecz, jaką zrobiłeś w życiu. Jeśli nie chcesz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, czy kiedykolwiek skłamałeś, żeby zaimponować komuś w tej grupie. Jeśli tak, zdradź szczegóły lub pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Przyznaj się, czy kiedykolwiek wysłałeś wiadomość do niewłaściwej osoby i żałowałeś tego. Opowiedz lub pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, kogo w tej grupie uważasz za najodważniejszego. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Zdradź, czy kiedykolwiek byłeś zazdrosny o kogoś z obecnych. Jeśli tak, opowiedz dlaczego lub pij cztery razy.",
            punishment: 4,
            points: 5,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest najgorsza rzecz, którą zrobiłeś w tajemnicy przed rodzicami. Jeśli nie chcesz zdradzić, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, która Twoim zdaniem najwięcej plotkuje. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Przyznaj się, czy kiedykolwiek złamałeś czyjeś serce. Jeśli tak, opowiedz lub pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka była najdziwniejsza rzecz, którą kiedykolwiek kupiłeś. Jeśli nie chcesz zdradzić, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Wymień najgorsze kłamstwo, jakie kiedykolwiek powiedziałeś. Jeśli nie chcesz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, kto w tej grupie ma najlepszy styl. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Zdradź, czy kiedykolwiek przesadziłeś na imprezie. Jeśli tak, opowiedz lub pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Przyznaj się, czy kiedykolwiek kogoś śledziłeś na social mediach obsesyjnie. Jeśli tak, opowiedz lub pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, czy kiedykolwiek miałeś sekretną sympatię, której nigdy nie wyznałeś uczuć. Jeśli tak, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Opowiedz o najbardziej niezręcznym momencie w Twoim życiu. Jeśli nie chcesz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, która według Ciebie najwięcej flirtuje. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Co byś zrobił, gdybyś wygrał milion złotych? Jeśli nie odpowiesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka była najgłupsza rzecz, jaką kiedykolwiek kupiłeś. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swoim najdziwniejszym doświadczeniu z komunikacją miejską. Jeśli nie chcesz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zaśpiewaj refren pierwszej piosenki, która przychodzi Ci do głowy. Jeśli nie zaśpiewasz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zrób najlepszą imitację swojego ulubionego zwierzęcia. Jeśli nie zrobisz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Jaka jest najdziwniejsza rzecz, jaką kiedykolwiek zjadłeś? Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Kto w tej grupie ma najlepszy taneczny ruch? Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka była Twoja najgorsza fryzura. Jeśli nie chcesz zdradzić, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które zrobiłbyś, gdybyś mógł być niewidzialny przez jeden dzień. Jeśli nie wymienisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o najśmieszniejszym memie, jaki ostatnio widziałeś. Jeśli nie chcesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaki jest Twój najbardziej niezręczny taneczny ruch. Jeśli nie chcesz go pokazać, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Kto w tej grupie wygląda, jakby zawsze miał dobry dzień? Jeśli nie odpowiesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które kupiłbyś w sklepie spożywczym, by wyglądało, jakbyś planował coś dziwnego. Jeśli nie wymienisz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaki jest Twój najdziwniejszy nawyk. Jeśli nie zdradzisz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Zrób swoją najlepszą minę do selfie. Jeśli nie pokażesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaką fikcyjną postać chciałbyś być przez jeden dzień. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o najgorszej wymówce, jakiej użyłeś, by się spóźnić. Jeśli nie zdradzisz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, która według Ciebie ma największą szansę zostać celebrytą. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które zawsze masz w lodówce. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zrób swoją najlepszą parodię dowolnego celebryty. Jeśli nie zrobisz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz, jaki jest Twój ulubiony suchar. Jeśli nie chcesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaki jest Twój ulubiony żart z dzieciństwa. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które zrobiłbyś, gdybyś wygrał darmowe wakacje gdziekolwiek. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, która według Ciebie byłaby najlepszym towarzyszem w podróży. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaką bajkę z dzieciństwa mógłbyś oglądać bez końca. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zrób 10 pompek lub pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swoim najdziwniejszym nawyku w kuchni. Jeśli nie chcesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka była Twoja najdziwniejsza praca lub obowiązek. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, którą zaprosiłbyś na obiad, gdybyś mógł zaprosić kogokolwiek. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy najbardziej nieoczekiwane rzeczy, jakie zrobiłeś w życiu. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Zaśpiewaj fragment swojej ulubionej piosenki z dzieciństwa. Jeśli nie zaśpiewasz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o najdziwniejszym komplement, jaki kiedykolwiek dostałeś. Jeśli nie chcesz zdradzić, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy aplikacje, bez których nie możesz żyć. Jeśli nie wymienisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka była Twoja największa wpadka na spotkaniu. Jeśli nie chcesz zdradzić, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Zaprojektuj idealny dzień od rana do wieczora. Jeśli nie powiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, kto w tej grupie najprawdopodobniej założy własną firmę. Jeśli nie odpowiesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które zawsze poprawiają Ci humor. Jeśli nie wymienisz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swoim najgorszym kulinarnym eksperymencie. Jeśli nie chcesz zdradzić, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zaprojektuj swój wymarzony dom w 30 sekund słowami. Jeśli nie możesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaki był Twój pierwszy koncert. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które zrobiłbyś, gdybyś mógł podróżować w czasie. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaką supermoc chciałbyś mieć, gdybyś mógł mieć tylko jedną. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swoim pierwszym samochodzie lub rowerze. Jeśli nie chcesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, która według Ciebie ma najlepszy styl. Jeśli nie odpowiesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zrób swoją najlepszą parodię reklamy telewizyjnej. Jeśli nie zrobisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, których nauczyłeś się w ciągu ostatniego roku. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, kto w tej grupie najprawdopodobniej zostanie sławnym youtuberem. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o najdziwniejszym hobby, jakie kiedykolwiek miałeś. Jeśli nie chcesz zdradzić, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, kto z obecnych miałby największe szanse wygrać w teleturnieju. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaki był najdziwniejszy sen, który pamiętasz. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które sprawiają, że czujesz się naprawdę szczęśliwy. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, kto z obecnych ma najbardziej zaraźliwy śmiech. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zaproponuj wymyśloną nazwę zespołu muzycznego. Jeśli nie podasz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka była Twoja najgorsza decyzja zakupowa. Jeśli nie zdradzisz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, z którą najchętniej zagrałbyś w planszówkę. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, których nigdy nie zrobisz, nawet jeśli ktoś Ci zapłaci. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swoim ulubionym wspomnieniu z dzieciństwa. Jeśli nie chcesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja ulubiona potrawa, której inni nie lubią. Jeśli nie zdradzisz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zrób najlepsze wrażenie swojego ulubionego nauczyciela. Jeśli nie zrobisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy filmy, które powinny mieć kontynuację. Jeśli nie wymienisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja najbardziej niezręczna historia z randki. Jeśli nie zdradzisz, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, z którą chciałbyś wziąć udział w teleturnieju. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zaprojektuj nowy smak lodów. Jeśli nie podasz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja ulubiona gra komputerowa z dzieciństwa. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o najdziwniejszej rzeczy, jaką zrobiłeś podczas wakacji. Jeśli nie chcesz zdradzić, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaki jest Twój ulubiony film animowany. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zrób swoją najlepszą parodię znanej reklamy. Jeśli nie zrobisz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które chciałbyś zrobić, zanim skończysz 50 lat. Jeśli nie wymienisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, kto z obecnych najprawdopodobniej napisze książkę. Jeśli nie odpowiesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o najdziwniejszym pytaniu, jakie ktoś Ci zadał. Jeśli nie chcesz zdradzić, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, z którą chciałbyś założyć zespół muzyczny. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja ulubiona potrawa świąteczna. Jeśli nie zdradzisz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zaprojektuj w myślach swoją wymarzoną imprezę i powiedz, kto byłby głównym DJ-em. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy zwierzęta, które chciałbyś mieć jako zwierzaki domowe (nawet egzotyczne). Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaki był Twój najdziwniejszy prezent, jaki kiedykolwiek dostałeś. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy rzeczy, które robisz, kiedy nikt nie patrzy. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, kto w tej grupie najlepiej gotuje. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zaprojektuj swoją wymarzoną pizzę. Jeśli nie podasz składników, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swoim najdziwniejszym spotkaniu z obcym człowiekiem. Jeśli nie chcesz zdradzić, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja ulubiona zabawa z dzieciństwa. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zrób najlepsze wrażenie kogoś, kto próbuje się wymigać od pracy. Jeśli nie zrobisz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy książki, które zmieniły Twoje życie. Jeśli nie wymienisz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja ulubiona potrawa, którą sam potrafisz ugotować. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o najśmieszniejszym momencie w swoim życiu. Jeśli nie chcesz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, kto w tej grupie miałby największe szanse wygrać konkurs na talent. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zaprojektuj swój wymarzony samochód słowami. Jeśli nie możesz, pij trzy razy.",
            punishment: 3,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy miejsca, które chciałbyś odwiedzić w kosmosie (jeśli mógłbyś). Jeśli nie wymienisz, pij dwa razy.",
            punishment: 2,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja ulubiona bajka Disneya. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swoim pierwszym wyjeździe zagranicznym. Jeśli nie chcesz zdradzić, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja ulubiona pora roku i dlaczego. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wskaż osobę, która według Ciebie ma najlepszy gust filmowy. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Zrób najlepsze wrażenie kogoś, kto właśnie wygrał na loterii. Jeśli nie zrobisz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja ulubiona potrawa śniadaniowa. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swoim najdziwniejszym doświadczeniu z transportem publicznym. Jeśli nie chcesz zdradzić, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, kto w tej grupie najbardziej przypomina postać z kreskówki. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Wymień trzy filmy, które każdy powinien zobaczyć przynajmniej raz. Jeśli nie wymienisz, pij trzy razy.",
            punishment: 3,
            points: 3,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Powiedz, kto z obecnych miałby największe szanse zostać gwiazdą TikToka. Jeśli nie odpowiesz, pij dwa razy.",
            punishment: 2,
            points: 2,
            isHard: false
        )
        ,
        QuestionsModel(
            question: "Opowiedz o swojej największej wpadce w szkole. Jeśli nie chcesz zdradzić, pij trzy razy.",
            punishment: 3,
            points: 4,
            isHard: true
        )
        ,
        QuestionsModel(
            question: "Powiedz, jaka jest Twoja ulubiona gra planszowa. Jeśli nie zdradzisz, pij dwa razy.",
            punishment: 2,
            points: 1,
            isHard: false
        )
        ,
    ]

    @Published var currentQuestion: QuestionsModel?
    @Published var filterOnlyEasyQuestions: Bool = false

    init() {
        loadNextQuestion()
    }

    func loadNextQuestion() {
        let filteredQuestions = filterQuestions()
        guard !filteredQuestions.isEmpty
        else {
            currentQuestion = nil // Brak dostępnych pytań
            return
        }
        currentQuestion = filteredQuestions.randomElement()
    }

    private func filterQuestions() -> [QuestionsModel] {
        if !filterOnlyEasyQuestions {
            let easyQuestions = questions.filter { !$0.isHard }
            return easyQuestions.isEmpty ? questions : easyQuestions
        } else {
            return questions
        }
    }
}
