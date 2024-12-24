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
            question: "Wypowiedz imię osoby z którą ostatnio uprawiał_ś sex.",
            punishment: 2,
            points: 1, isHard: true
        ),
        QuestionsModel(
            question: "Masz szczęście! Wskaż jednego gracza, który musi wypić kolejkę. Jeśli tego nie zrobi odpada z gry",
            punishment: 2,
            points: 2, isHard: false
        )
        ,
        QuestionsModel(
            question: "Zrób selfie i umieść je na Instagramie z podpisem: Napisz do mnie jeśli Ty też jestś wilgotn_! ",
            punishment: 1,
            points: 1, isHard: true
        ),
        QuestionsModel(
            question: "Jeśli Twój telefon dzis zadzwoni, odbierz go i powiedz bez błedu: Pizzeria Apa Papa Pepe, w czym mogę pomóc? Jeśli zrobisz błąd, pijesz kolejkę",
            punishment: 3,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Każdy, kto kiedykolwiek uprawiał seks w publicznej toalecie, pije kolejkę",
            punishment: 1,
            points: 1, isHard: true
        ),
        QuestionsModel(
            question: "Wymień ubranie z graczem płci przeciwnej na oczach innych graczy. Wybór nalezy do Ciebie",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Wypij 1 shota ostrego sosu lub dopij to co gracz po prawej ma w kieliszku. Jeśli gospodarz nie ma ostrego sosu, pije kolejke za ciebie",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Dopij to co masz w kieliszku. Jeśli nie masz nic w kieliszku, nalej sobie podwójnego szota",
            punishment: 0,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Każdy gracz pije tyle razy ile ma rzeczy położonych na stole. Jeśli nie wykonasz zadania odpadasz z gry",
            punishment: 0,
            points: 2, isHard:  false
        ),
        QuestionsModel(
            question: "Wypij całą butelkę wody 0.5 l w mniej niż 20 sekund ",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Wyśli jednemu z rodziców 12-ste zdjęcie z galeri zdjeć na Twoim telefonie.",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Ustaw w telefonie język obcy, który inni gracze wybiorą za Ciebie. Pozostaw jęzk do końca gry",
            punishment: 2,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Jaka jest najbardzij bolesna kontuzja jaką miał_ś?",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Wykonaj masaz graczowi po Twojej lewej stronie",
            punishment: 2,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Zadzwoń do losowej restauracji i zamów jednego dużego bakłażana z dwoma jajkami",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Wszyscy wymieniają się miejscami",
            punishment: 0,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Wszystkie dziewczyny piją kolejkę",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Wymień co najmniej 3 zabawki erotyczne w ciągu 15 sekund",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Każdy kto uprawiał sex w ten weekend pije kolejkę",
            punishment: 1,
            points: 1, isHard: true
        ),
        QuestionsModel(
            question: "Twerkuj przez 10 sekund",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Za kazdym razem gdy wchodzisz do toalety musisz zabrać ze sobą gracza płci przeciwnej",
            punishment: 2,
            points: 1, isHard: true
        ),
        QuestionsModel(
            question: "Oblizuj swój palec bardzo namietnie patrząc na gracza na przeciwko Ciebie",
            punishment: 1,
            points: 1, isHard: true
        ),
        QuestionsModel(
            question: "Wybierz na telefonie dziesiąty numer z ostatnio wybieranych numerów, zadzwoń i temu, kto odbierze wyjaśni jak działa sztuczne zapłodnienie",
            punishment: 1,
            points: 1, isHard: true
        ),
        QuestionsModel(
            question: "Rozbierz się do bielizny i idż do sąsiadów zapytać czy mogą pożyczyć Ci taśmę klejącą. Jeśli nie wykonasz zadania pijesz kolejkę lub opuszczasz grę",
            punishment: 2,
            points: 2, isHard: true
        ),
        QuestionsModel(
            question: "Pozwól innym graczom przeglądać Twoją galerię przez 60 sekund. Jeśli nie wykonasz zadania pijesz kolejkę lub odpadzasz z gry",
            punishment: 2,
            points: 2, isHard: false
        ),
        QuestionsModel(
            question: "Siłuj się na rękę z graczem po Twojej lewej stronie. Przegrany pije kolejkę ",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Każdy kto ma prawo jazdy pije kolejkę",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Wykonaj na graczu który siedzi na przeciwko Ciebie 30 sekundowy lap dance",
            punishment: 2,
            points: 1, isHard: true
        ),
        QuestionsModel(
            question: "Zachowaj powazną twarz. Każdy gracz spróbuje cie rozsmieszyć w 10 sekund. Jeśli mu się nie uda pije kolejkę. Jeśli się uda, Ty pijesz kolejkę ",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Wybierz jeszcze dwóch graczy aby wspólnie stworzyć ludzką piramidę. Jeśli Wam się nie uda, wszyscy pijecie kolejkę",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Każdy kto jest wyższy od Ciebie pije kolejkę",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Gracze którzy mają puste kieliszki, piją. W przeciwnym razie opuszczają grę",
            punishment: 2,
            points: 2, isHard: false
        ),
        QuestionsModel(
            question: "Wybierz gracza który z Tobą wypije kolejke",
            punishment: 1,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Spróbuj naśladować robaka",
            punishment: 2,
            points: 1, isHard: false
        ),
        QuestionsModel(
            question: "Zadzwoń do jednego z rodziców i powiedz aby przyszedł po Ciebie na izbę zatrzymań ",
            punishment: 1,
            points: 1, isHard: true
        ),
        QuestionsModel(
            question: "Wszyscy robicie sobie przerwę tak długą jaką uważacie za stosowną",
            punishment: 0,
            points: 0, isHard: false
        ),
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
