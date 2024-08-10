import Foundation

public class StudySet
{
    public init ()
    {
    }

    func readSet() -> String?
    {
    print("Please paste the full file path for the set that you want to study: ")
        if let filePath: String = readLine(), !filePath.isEmpty
        {
            let fileManager: FileManager = FileManager.default
            do
            {
                let file = URL(fileURLWithPath: filePath)
                let fileContents = try String(contentsOf: file, encoding: .utf8)
                print(fileContents)
            }
            catch
            {
                print("Error reading file: \(error.localizedDescription)")
            }
        }
        else
        {
            print("No file path provided.")
        }; return nil
    }
}
