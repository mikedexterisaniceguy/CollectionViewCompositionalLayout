//
//  ListSection.swift
//  CollectionViewCompositionalLayout
//
//  Created by 123 on 14.11.22.
//

import Foundation

enum ListSection {
    
    // Секции с массивом айтемов
    case sales([ListItem])
    case category([ListItem])
    case exapmles([ListItem])
    
    // Свойство, чтобы понять сколько айтемов может быть в каждой секции
    var items: [ListItem] {
        switch self {
        case .sales(let items):
            return items
        case .category(let items):
            return items
        case .exapmles(let items):
            return items
        }
    }
    
    // Количество секций
    var count: Int {
        return items.count
    }
    
    // Название каждой секции
    var title: String {
        switch self {
        case .sales(_):
            return ""
        case .category(_):
            return "Category"
        case .exapmles(_):
            return "Example"
        }
    }
}
