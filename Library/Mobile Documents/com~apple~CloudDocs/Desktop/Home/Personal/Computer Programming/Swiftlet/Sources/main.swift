func main()
{
    let userMenuInstance = UserMenu()
    userMenuInstance.checkForDirectory()
    userMenuInstance.getUserActionChoice()
    userMenuInstance.sendUserBasedOnAction(choice: choice, setName: String, setQuestionsDictionary: [Int: CreateSet.SetQuestions])
}

main()
