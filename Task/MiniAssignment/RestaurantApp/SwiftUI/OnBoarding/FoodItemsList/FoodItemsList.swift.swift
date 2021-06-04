import SwiftUI
import RxSwift
import RxCocoa

import UIKit
import PKHUD

struct FoodItemsList: View {

    // MARK: - Properties
    var presenter: ViewToPresenterFoodItemListProtocol?

    @State var foodItemsList: [FoodItem] = [FoodItem]()

    var body: some View {

       NavigationView {

           List(foodItemsList) { foodItem in 
               FoodItemCell(foodItem: foodItem)
           }.navigationBarTitle(Text("Food Items"))
           .onAppear() {
                presenter?.viewDidLoad()
           }
           
           }

       }

    }

    
extension FoodItemsList: PresenterToViewFoodItemListProtocol {
    
    func onFetchFoodItemListSuccess(foodItemList: [FoodItems]) {
        self.foodItemsList = foodItemList
    }
    
    func onFetchFoodItemListFailure(error: String) {
        print("View receives the response from Presenter with error: \(error)")
    }
    
    func showHUD() {
        HUD.show(.progress, onView: self)
    }
    
    func hideHUD() {
        HUD.hide()
    }
    
}
        
