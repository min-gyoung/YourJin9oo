//
//  TabBarView.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/14/25.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
        TabView {
            RequestHelpView()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("도움")
                }
            
            GiveHelpView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("도와주기")
                }
            
            MyPageView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("마이페이지")
                }
        }
    }
}

#Preview {
    TabBarView()
}
