import SwiftUI

struct FoodItemCell: View {

    let foodItem: FoodItem

    var body: some View {

        VStack {
    Image(\(foodItem.imageName))
        .resizable()
        .aspectRatio(contentMode: .fit)
 
    HStack {
        VStack(alignment: .leading) {
            Text((\(foodItem.title))
                .font(.title)
                .foregroundColor(.secondary)
            Text((\(foodItem.desc))
                .font(.headline)
                .fontWeight(.black)
                .foregroundColor(.primary)
                .lineLimit(3)
                HStack(alignment: .leading, spacing: 10) {
                    Text((\(foodItem.quantity).uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                        
                    Button(action: {
                        print("Button action")
                        //Call Presenter
                        }) {
                            Text("\(foodItem.id) SGD")
                            .padding(10.0)
                            .overlay(
                             RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .blue, radius: 10.0)
                            .foregroundColor(.white)
                            .background(Color.lightGreen)
                            )
                        }
                }
        }
        .layoutPriority(100)
 
        Spacer()
    }
    .padding()
}

    }
}
        
}