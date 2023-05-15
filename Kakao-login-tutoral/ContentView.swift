import SwiftUI


struct ContentView: View {
    
    @StateObject var todoLists = TodoLists()

    var body: some View {
        VStack {

            LoginView1()
                .environmentObject(todoLists)
        }
    }
}
