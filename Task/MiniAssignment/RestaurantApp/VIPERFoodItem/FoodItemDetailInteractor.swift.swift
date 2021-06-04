
import Foundation

class FoodItemDetailInteractor: PresenterToInteractorFoodItemDetailProtocol {
    
    // MARK: Properties
    weak var presenter: InteractorToPresenterFoodItemDetailProtocol?
    var foodItem: FoodItem?
    
}
