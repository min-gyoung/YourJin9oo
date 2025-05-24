import SwiftUI

public struct ContentView: View {
  public init() {}
  
  public var body: some View {
    TabView {
      RequestHelpView()
        .tabItem {
          Image(systemName: "pencil.line")
            .font(.system(size: 24))
          Text("도움요청")
            .font(.system(size: 11, weight: .light))
        }
      
      GiveHelpView()
        .tabItem {
          Image(systemName: "person.2.fill")
            .font(.system(size: 24))
          Text("도와주기")
            .font(.system(size: 11, weight: .light))
        }
      
      RequestHelpView()
        .tabItem {
          Image(systemName: "message.fill")
          Text("채팅")
        }
      
      GiveHelpView()
        .tabItem {
          Image(systemName: "tray.fill")
          Text("마이페이지")
        }
    }
    .tint(Color("AccentColor"))
    .onAppear {
      UITabBar.appearance().unselectedItemTintColor = .lightGray
    }
  }
  
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
  }
}

#Preview {
  ContentView()
}
