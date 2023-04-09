//
//  Question.swift
//  PersonalQuiz
//
//  Created by Maksim Builov on 08/04/2023.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Что для вас \"идеальный отдых\"?",
                type: .single,
                answers: [
                    Answer(title: "Чтение книги", temperament: .phlegmatic),
                    Answer(title: "Тренировка", temperament: .choleric),
                    Answer(title: "Вечер в большой компании", temperament: .sanguine),
                    Answer(title: "Gaming", temperament: .melancholic)
                ]
            ),
            Question(
                title: "Какими качествами вы обладаете?",
                type: .multiple,
                answers: [
                    Answer(title: "Спокойствие", temperament: .phlegmatic),
                    Answer(title: "Напористость", temperament: .choleric),
                    Answer(title: "Общительность", temperament: .sanguine),
                    Answer(title: "Перфекционизм", temperament: .melancholic),
                ]
            ),
            Question(
                title: "Любите ли вы путешествовать?",
                type: .ranged,
                answers: [
                    Answer(title: "Не люблю", temperament: .melancholic),
                    Answer(title: "Иногда", temperament: .phlegmatic),
                    Answer(title: "Часто", temperament: .choleric),
                    Answer(title: "Обожаю", temperament: .sanguine)
                ]
            )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let temperament: Temperament
}

enum Temperament: String {
    case phlegmatic = "Флегматик ☯️"
    case choleric = "Холерик 🚀"
    case sanguine = "Сангвиник 🕺"
    case melancholic = "Меланхолик 🧘‍♂️"
    
    var definition: String {
        switch self {
        case .phlegmatic:
            return "Вы отличаетесь неспешностью, настроение меняется слабо, внешне эмоции проявляете практически незаметно. В работе настойчивы, ставку делает на качество, а не на скорость. В большинстве ситуаций спокоены, редко теряете самообладание и равновесие. Вы усердны, усидчивы, стараетесь доводить начатое до конца."
        case .choleric:
            return "Вы страстны, эмоциональны, активны, вспыльчивы. Настроение изменчиво, быстро истощаетесь. Отличаетесь резкостью в движениях, решениях и высказываниях. Быстро загораетесь, но при неблагоприятных условиях можете переходить на агрессию."
        case .sanguine:
            return "Вы общительны, подвижны, отличаетесь быстрой реакцией на изменения и легко приспосабливаетесь к ним. Неудачи вам не страшны. Эмоционалены в выражении чувств, ваша мимика очень активна! Многозадачны, можете успешно выполнять сразу несколько дел."
        case .melancholic:
            return "Вы эмоциональная личность, ваши чувства легко ранить. Очень впечатлительны, часто о чем-то переживаете. В новой компании чувствуюте себя неловко. У вас аналитический склад ума, отличная дисциплина, вы любите порядок и страетесь доводить все до идеала."
        }
    }
}

