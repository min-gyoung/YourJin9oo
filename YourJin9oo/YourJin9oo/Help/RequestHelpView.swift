//
//  RequestHelpView.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/13/25.
//

import SwiftUI

struct RequestHelpView: View {
    
    var body: some View {
            
        VStack {
            Text("도움 요청")
                .font(.system(size: 28, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 16)
                .padding(.top, 20)
            
            Text("🚨 매칭 대기중...")
                .font(.system(size: 20, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color(hex: "#F3F3F3"))
//                    .stroke(Color(hex: "#E9E9E9"), lineWidth: 1)
                    .frame(height: 140)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                VStack{
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 4)
//                                .fill(Color(hex: "#FF7866"))
                                .frame(width: 54, height: 20)
                            
                            Text("매칭중")
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                        }
                        .padding(.leading, 40)
                        
                        Text("심심한 사람?")
                            .font(.system(size: 16, weight: .semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                        
                        Text("n/n")
                            .font(.system(size: 16))
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing, 40)
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
//                                .fill(Color(hex: "#DBDBDB"))
                                .frame(width: 60, height: 24)
                            
                            Text("스포츠")
                                .font(.system(size: 14))
//                                .foregroundColor(Color(hex: "#666666"))
                        }
                        .padding(.trailing, 40)
                    }
                }
            }
            .padding(.bottom, 18)
            Divider()
            
            Text("내 질문")
                .font(.system(size: 28, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.top, 18)
                .padding(.bottom, 16)
            
            ScrollView {
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
//                        .fill(Color(hex: "#F3F3F3"))
//                        .stroke(Color(hex: "#E9E9E9"), lineWidth: 1)
                        .frame(height: 140)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    
                    VStack {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 4)
//                                    .fill(Color(hex: "#A6A6A6"))
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
//                                    .fill(Color(hex: "#DBDBDB"))
                                    .frame(width: 60, height: 24)
                                
                                Text("스포츠")
                                    .font(.system(size: 14))
//                                    .foregroundColor(Color(hex: "#666666"))
                            }
                            .padding(.trailing, 40)
                        }
                    }
                }
            }
            
            Button(action: {}) {
                Text("+ help!")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                    .frame(width: 150, height: 60)
//                    .background(Color(hex:"#FF7866"))
                    .cornerRadius(20)
                    .padding(.leading, 200)
                    .padding(.bottom, 10)
            }
        }
    }
}



#Preview {
    RequestHelpView()
}
