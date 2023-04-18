import SwiftUI

struct SaveLoadButtonView6: View {
    
    @EnvironmentObject var todoLists: TodoLists
    
    var body: some View {
        HStack(spacing: 50) {
            Button("Save", action: {
                // Save 버튼을 클릭할 때 실행되는 코드를 여기에 작성합니다.
                saveTodoList()
            })
            .padding(.all, 10)
            
            Button("Load", action: {
                // Load 버튼을 클릭할 때 실행되는 코드를 여기에 작성합니다.
                loadTodoList()
            })
            .padding(.all, 10)
        }
        .buttonStyle(BorderlessButtonStyle())
    }
    
    func saveTodoList() {
        
        let path = getDocumentPath().appendingPathComponent("todolist.json")
        let jsonString = dataToJsonString()
        
        if jsonString == nil {
            print("Error: No JSON String found")
            return
        }
        
        print(path.absoluteString)
        
        do {
            try jsonString?.write(to: path, atomically: true, encoding: .utf8)
        }
        catch {
            print(error.localizedDescription)
        }
    }
    
    func loadTodoList() {
        
        let path = getDocumentPath().appendingPathComponent("todolist.json")
        
        do {
            let jsonString = try String(contentsOf: path)
            let jsonData = jsonStringToData(jsonString)
            
            if jsonData == nil {
                print("Error: No JSON Data found")
                return
            }
            
            todoLists.list = jsonData!
        }
        catch {
            print(error.localizedDescription)
        }
    }
    
    func getDocumentPath() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    
    func dataToJsonString() -> String? {
        
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted

        do {
            let data = try encoder.encode(todoLists.list)
            return String(data: data, encoding: .utf8)
        }
        catch {
            print(error.localizedDescription)
        }
        
        return nil
    }
    
    func jsonStringToData(_ jsonString: String) -> [TodoList]? {
        
        let decoder = JSONDecoder()
        let jsonData = jsonString.data(using: .utf8)
        
        if jsonData == nil {
            print("Error: Cannot convert json String to Data")
            return nil
        }
        
        do {
            let gotList = try decoder.decode([TodoList].self, from: jsonData!)
            return gotList
        }
        catch {
            print(error.localizedDescription)
        }
        
        return nil
    }
}

struct SaveLoadButtonView6_Previews: PreviewProvider {
    static var previews: some View {
        SaveLoadButtonView6()
    }
}
