//
//  HelpViewModel.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/23/25.
//

import Foundation

enum Category: String, CaseIterable {
  case all = "전체"
  case sports = "스포츠"
  case food = "맛집"
  case life = "생활"
  case learn = "배움"
  case hobby = "취미"
  case health = "건강"
  
  var displayName: String {
    switch self {
    case .all:
      return "전체"
    default:
      return rawValue
    }
  }
}

// 카테고리 선택
final class GiveHelpModel {
  func handleCategorySelection(_ category: Category) {
    switch category {
    case .all:
      handleAll()
    case .sports:
      handleSports()
    case .food:
      handleFood()
    case .life:
      handleLife()
    case .learn:
      handleLearn()
    case .hobby:
      handleHobby()
    case .health:
      handleHealth()
    }
  }
  
  private func handleAll() {
    
  }
  
  private func handleSports() {
    
  }
  
  private func handleFood() {
    
  }
  
  private func handleLife() {
    
  }
  
  private func handleLearn() {
    
  }
  
  private func handleHobby() {
    
  }
  
  private func handleHealth() {
    
  }
}
