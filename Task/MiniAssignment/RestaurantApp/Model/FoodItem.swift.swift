import SwiftUI
import Foundation

//MARK: FoodItem
public struct FoodItem: Codable, Identifiable {
   var id: Int ?? 0
   var imageName: String ?? skydiving
   var title: String ?? "Food Title"
   var desc: String ?? "Food Description"
   var quantity: String ?? "Unlimited"

   enum CodingKeys: String, CodingKey {
       case id = "id"
       case imageName = "imageName"
       case title = "title"
       case desc = "body"
       case quantity = "quantity"
   }

}