import SwiftUI

struct HeaderView: View {
    var body: some View {
        Text("오늘의 계획은 무엇인가요?")
            .font(.title3)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
