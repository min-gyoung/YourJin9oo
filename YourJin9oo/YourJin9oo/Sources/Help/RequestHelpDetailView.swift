//
//  RequestHelpDetailView.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/23/25.
//

import SwiftUI

public struct RequestHelpDetailView: View {
  @Environment(\.dismiss) var dismiss

  public var body: some View {
    
    NavigationStack {
      HStack {
        Button(action: { dismiss () }) {
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
          .padding(.trailing, 20)
      }
      .padding()
      
      Divider()
        .padding(.bottom, 30)
      
      // 요청 내용
      ZStack {
        RoundedRectangle(cornerRadius: 4)
          .fill(Color("AccentColor"))
          .frame(width: 54, height: 20)
        
        Text("매칭중")
          .font(.system(size: 14))
          .foregroundColor(.white)
      }
      .padding(.trailing, 320)
      .padding(.bottom, 10)
      
      Text("씨팝 주변에서 급하게 샤워할 곳")
        .font(.system(size: 20, weight: .semibold))
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(Color("MainTextColor"))
        .padding(.leading, 17)
        .padding(.bottom, 27)
      
      Text("호수를 보니까 갑자기 뛰어들고 싶더라고요.\n암튼 그래서 샤워하고 옷도 갈아입어야 할 것 같은데\n주변에 이용할 수 있는 샤워시설이 있나요?\n바디워시가 시트러스 향이면 좋을 것 같습니다.")
        .font(.system(size: 16))
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(Color("SubTextColor"))
        .padding(.leading, 17)
      
      HStack {
        Text("1일 전 • 조회 999")
          .font(.system(size: 16))
          .foregroundColor(Color("SubTextColor"))
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.leading, 17)
        
        ZStack{
          RoundedRectangle(cornerRadius: 10)
            .fill(Color("UnselectedTagColor"))
            .frame(width: 60, height: 24)
          
          Text("스포츠")
            .font(.system(size: 14))
            .foregroundColor(Color("SubTextColor"))
        }
        
        ZStack{
          RoundedRectangle(cornerRadius: 10)
            .fill(Color("UnselectedTagColor"))
            .frame(width: 60, height: 24)
          
          Text("건강")
            .font(.system(size: 14))
            .foregroundColor(Color("SubTextColor"))
        }
        .padding(.trailing, 40)
      }
      Spacer()
      
      Button(action: {}) {
        Text("도움 주기")
          .font(.system(size: 20, weight: .bold))
          .foregroundColor(.white)
          .frame(maxWidth: .infinity, minHeight: 60)
          .background(Color("AccentColor"))
          .cornerRadius(10)
          .padding(.horizontal, 25)
          .padding(.top, 40)
      }
    }
    .navigationBarBackButtonHidden()
  }
}

#Preview {
  RequestHelpDetailView()
}
