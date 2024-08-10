import Foundation

public class UserMenu
{
    public init()
    {}

    func checkForDirectory() -> String?
    {
        print("Is this your first time using Swiftlet? (Y/N)")

        if let response = readLine()?.uppercased()
        {
            if response == "Y"
            {
                print("Please paste the full file path for where you want to store your sets: ")
                if let filePath: String = readLine(), !filePath.isEmpty
                {
                    let fileManager: FileManager = FileManager.default
                    do
                    {
                        try fileManager.createDirectory(atPath: filePath, withIntermediateDirectories: true, attributes: nil)
                        print("Directory created at path: \(filePath)")
                        return filePath
                    }
                    catch
                    {
                        print("Error creating directory: \(error.localizedDescription)")
                    }
                }
                else
                {
                    print("No file path provided.")
                }
            }
            else
            {
                print("Welcome back to Swiftlet!")
                print("Please paste the full file path for where your sets are stored:")
                if let filePath: String = readLine(), !filePath.isEmpty
                {
                    return filePath
                }
                else
                {
                    print("No file path provided.")
                }
            }
        }
        else
        {
            print("No response provided.")
        }
        return nil
    }

    func getUserActionChoice() -> String?
    {
        print("What do you want to do today?")
        print("Create New Set: 1")
        print("Study a Set: 2")
        print("Edit a Set: 3")

        if let choice: String = readLine(), !choice.isEmpty
        {
            return choice
        }
        else
        {
            print("No choice provided.")
        }
        return nil
    }

    func sendUserBasedOnAction(choice: String, setName: String, setQuestionsDictionary: [Int: CreateSet.SetQuestions])
    {
    let createSetInstance = CreateSet()
    let studySetInstance = StudySet()

        switch choice
        {
            case "1":
                createSetInstance.createSetData()
                createSetInstance.addSetQuestionsAndAnswers(setName: setName)
                createSetInstance.printAllQuestionsAndAnswers(setName: setName, setQuestionsDictionary: setQuestionsDictionary)
            case "2":
                studySetInstance.readSet()
            case "3":
                print("yo")
            default:
                print("Invalid choice, please enter: 1, 2, or 3.")
                getUserActionChoice()
        }
    }
}
