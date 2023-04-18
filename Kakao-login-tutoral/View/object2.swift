import Foundation

struct TodoList: Identifiable, Codable {
    var id = UUID()
    var content: String
    var checked: Bool
}

class TodoLists: ObservableObject {
    @Published var list: [TodoList] = []
    @Published var savedLists: [Date: [TodoList]] = [:] // 날짜별 할일 목록을 저장하는 딕셔너리
    
    func saveList(date: Date) {
        savedLists[date] = list
        list = [] // 현재 리스트 초기화
    }
    
    func loadList(date: Date) {
        list = savedLists[date] ?? []
    }
    
    func toggleCheckedState(_ i: Int, forDate date: Date) {
        savedLists[date]![i].checked.toggle()
    }
    
    func deleteList(_ i: Int, forDate date: Date) {
        savedLists[date]!.remove(at: i)
    }
}

