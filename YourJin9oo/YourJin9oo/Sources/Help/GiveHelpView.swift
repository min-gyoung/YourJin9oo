//
//  GiveHelpView.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/14/25.
//

import SwiftUI

public struct GiveHelpView: View {
  @State private var category: [Category] = Category.allCases
  @State private var selectedCategory: Category = .all
  
  private let handler = GiveHelpModel()
  
  public var body: some View {
    VStack {
      Text("도와주기")
        .font(.system(size: 28, weight: .bold))
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 20)
        .padding(.bottom, 16)
        .padding(.top, 20)
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack {
          ForEach(category, id: \.self) { category in
            Button(action:{
              print("\(category.displayName)")
              selectedCategory = category
              reCategory(toFront: category)
              handler.handleCategorySelection(category)
            }) {
              Text(category.displayName)
                .font(.system(size: 16))
                .foregroundColor(Color("SubTextColor"))
                .frame(width: 67, height: 34)
                .background(
                  RoundedRectangle(cornerRadius: 20)
                    .fill(Color("UnselectedTagColor"))
                )
                .overlay(
                  RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 1)
                )
                .cornerRadius(20)
            }
            
            // 구분선
            if category == selectedCategory {
              Rectangle()
                .fill(Color.gray)
                .frame(width: 1, height: 20)
                .padding(.horizontal, 4)
            }
          }
        }
      }
      .padding(.leading, 10)
      .padding(.trailing, 10)
      .padding(.bottom, 20)
      
      ZStack(alignment: .leading) {
        RoundedRectangle(cornerRadius: 10)
          .fill(Color("TextFieldColor"))
          .stroke(Color("SelectedTagColor"), lineWidth: 1)
          .frame(height: 140)
          .padding(.leading, 20)
          .padding(.trailing, 20)
        VStack {
          HStack {
            ZStack {
              RoundedRectangle(cornerRadius: 4)
                .fill(Color("SelectedTagColor"))
                .frame(width: 54, height: 20)
              
              Text("매칭완")
                .font(.system(size: 14))
                .foregroundColor(.white)
            }
            .padding(.leading, 40)
            
            Text("심심한 사람?")
              .font(.system(size: 16, weight: .semibold))
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.leading, 5)
          }
          .padding(.bottom, 5)
          
          Text("저랑 마크에서 1대1 뜰사람 찾아요\n대신 맨주먹으로 저이기면 특별히 아끼는 ...")
            .font(.system(size: 16))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 40)
            .padding(.bottom, 3)
          
          HStack {
            Text("1일 전 • 조회 999")
              .font(.system(size: 16))
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.leading, 40)
            
            ZStack{
              RoundedRectangle(cornerRadius: 10)
                .fill(Color("UnselectedTagColor"))
                .frame(width: 60, height: 24)
              
              Text("스포츠")
                .font(.system(size: 14))
                .foregroundColor(Color("SubTextColor"))
            }
            .padding(.trailing, 40)
          }
        }
      }
      Spacer()
    }
  }
  
  private func reCategory(toFront selected: Category) {
    category.removeAll(where: { $0 == selected })
    category.insert(selected, at: 0)
  }
}

#Preview {
  GiveHelpView()
}
