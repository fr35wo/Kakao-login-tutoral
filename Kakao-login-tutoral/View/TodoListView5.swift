import SwiftUI

struct TodoListView5: View {
    @EnvironmentObject var todoLists: TodoLists
    @State var isTaskCompleted : Bool = false
    let completedColor = Color.black // 계획 완료 시 적용할 회색 색상
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack {
                ForEach(0..<todoLists.list.count, id: \.self) { i in
                    HStack {
                        Button(action: {
                            toggleCheckedState(i)
                        },
                               label: {
                            Image(todoLists.list[i].checked ? "checkmark" :"disturb")
                                .resizable().frame(width: 30, height:30)
                                .foregroundColor(isTaskCompleted ? completedColor : Color(hex: 0xF193B8A))
                        })
                        Text(todoLists.list[i].content)
                        Spacer()
                        Button(
                            action: {
                                deleteList(i)
                            },
                            label: {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                        )
                    }
                    .font(.system(size: 20).italic())
                    .buttonStyle(BorderlessButtonStyle())
                }
            }
            .foregroundColor(isTaskCompleted ? completedColor : nil) // 전체 foreground 색상 설정
        }
        .padding(.bottom, -60)
    }
    
    func updateTaskCompletion() {
        let checkedCount = todoLists.list.filter { $0.checked }.count
        
        switch checkedCount {
        case 0:
            // 하나도 체크되어 있지 않은 경우
            isTaskCompleted = false
        case todoLists.list.count:
            // 모두 체크된 경우
            isTaskCompleted = true
        default:
            // 일부만 체크되어 있는 경우
            isTaskCompleted = true
        }
    }
    
    func toggleCheckedState(_ i: Int) {
        todoLists.list[i].checked.toggle()
        updateTaskCompletion()
    }
    
    
    func deleteList(_ i: Int) {
        todoLists.list.remove(at: i)
    }
}
