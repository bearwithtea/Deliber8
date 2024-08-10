
import Foundation

public class CreateSet
{
    public init()
    {

    }

    struct SetQuestions
    {
        var question: String
        var answer: String
    }

    func createSetData() -> (name: String, description: String, className: String)?
    {
        print("Set Name: ")
        guard let setName = readLine(), !setName.isEmpty else
        {
            print("No input provided.")
            return nil
        }

        print("Set Description: ")
        guard let setDescription = readLine(), !setDescription.isEmpty else
        {
            print("No input provided.")
            return nil
        }

        print("Set Class: ")
        guard let setClass = readLine(), !setClass.isEmpty else
        {
            print("No input provided.")
            return nil
        }

        print("Set Date: ")
        guard let setDate = readLine(), !setDate.isEmpty else
        {
            print("No input provided.")
            return nil
        }

        return (name: setName, description: setDescription, className: setClass)
    }

    func addSetQuestionsAndAnswers(setName: String)
    {
        print("You are now adding questions and answers for \(setName)")
        print("If you would like to save your work, type 'save' into the question prompt.")
        print("If you would like to delete your work, type 'exit' into the question prompt.")

        var questionNumber = 0
        var setQuestionsDictionary: [Int: SetQuestions] = [:]

        while true
        {
            print("Question: ")
            guard let question = readLine(), !question.isEmpty else
            {
                print("No input provided.")
                continue
            }

            if question.lowercased() == "save"
            {
                print("Saving your work!")
                break
            }
            else if question.lowercased() == "exit"
            {
                print("Exiting without saving!")
                return
            }

            print("Answer: ")
            guard let answer = readLine(), !answer.isEmpty else
            {
                print("No input provided.")
                continue
            }

            setQuestionsDictionary[questionNumber] = SetQuestions(question: question, answer: answer)
            questionNumber += 1
        }
    }

    func printAllQuestionsAndAnswers(setName: String, setQuestionsDictionary: [Int: SetQuestions])
    {
        print("\nAll questions and answers for \(setName):")
        for (number, setQuestion) in setQuestionsDictionary
        {
            print("Q\(number + 1): \(setQuestion.question)")
            print("A: \(setQuestion.answer)\n")
        }
    }
}
