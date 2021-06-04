import SwiftUI

struct FoodItemDetail: View {

    let foodItem: FoodItem

    var body: some View {

    VStack(spacing: 10) {
       Text("Welcoming the user \(foodItem.id) to DinDinn")
                .font(.title)
           Text("We are serving your favourite food \(foodItem.title)")
                .font(.headline)     
    }

       }

    }
        
