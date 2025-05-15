//
//  InterestSelectionView.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/15/25.
//

import SwiftUI

public struct InterestSelectionView: View {
    let interestList: [(name: String, icon: String)] = [
        ("스포츠", "dumbbell.fill"),
        ("맛집", "frying.pan.fill"),
        ("생활", "leaf.fill"),
        ("배움", "books.vertical.fill"),
        ("취미", "music.note"),
        ("건강", "heart.fill")
    ]
    
    @State private var selectedInterests: [String: Bool] = [:]
    
    public var body: some View {
        Text("당신의 관심분야는 뭔가요?")
            .font(.system(size: 24, weight: .bold))
        //            .foregroundColor(Color(hex: "#666666"))
            .padding(.bottom, 10)
<<<<<<< HEAD
            .padding(.top, 80)
=======
            .padding(.top, 100)
>>>>>>> 152f631 (feat: Interest 버튼 삭제)
        
        Text("다른 사람에게 도움 줄 수 있는\n분야를 골라주세요.")
            .font(.system(size: 14))
        //            .foregroundColor(Color(hex: "#666666"))
            .multilineTextAlignment(.center)
        
        Spacer()
<<<<<<< HEAD
        
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: -60), count: 2), spacing: 15) {
            ForEach(interestList, id: \.name) { interest in
                Button(action: {
                    selectedInterests[interest.name] = !(selectedInterests[interest.name] ?? false)
                }) {
                    ZStack {
                        RoundedRectangle (cornerRadius: 16)
                        //                                .fill(Color.gray)
                            .fill(selectedInterests[interest.name] == true ? Color.yellow : Color.gray)
                        //                            .fill(Color(hex: "#D9D9D9"))
                            .frame(width: 150, height: 150)
                        
                        VStack {
                            Image(systemName: interest.icon)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color.white)
                                .frame(width: 60, height: 60)
                            
                            Text(interest.name)
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                        }
                    }
                }
            }
        }
        
        Button(action: {
            let selected = selectedInterests.filter { $0.value }.map { $0.key }
            print("\(selected)")
        }) {
            Text("선택 완료")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: 60)
                .background(selectedInterests.values.contains(true) ? Color.red : Color.gray)
                .cornerRadius(10)
                .padding(.horizontal, 25)
                .padding(.top, 40)
        }
        .disabled(!selectedInterests.values.contains(true))
        Spacer()
    }
}

#Preview {
    InterestSelectionView()
}
