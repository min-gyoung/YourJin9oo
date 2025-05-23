//
//  RequestHelpDetailView.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/23/25.
//

import SwiftUI

public struct RequestHelpDetailView: View {
  
  public var body: some View {
    HStack {
      Button(action: {}) {
        Image(systemName: "chevron.left")
          .imageScale(.large)
          .foregroundColor(.black)
          .foregroundColor(Color("SubTextColor"))

      }
      Spacer()
      
      Text("요청 상세")
        .font(.system(size: 20, weight: .bold))
        .frame(maxWidth: .infinity, alignment: .center)
        .foregroundColor(Color("SubTextColor"))

    }
    .padding()
    
    
  }
}
#Preview {
  RequestHelpDetailView()
}
