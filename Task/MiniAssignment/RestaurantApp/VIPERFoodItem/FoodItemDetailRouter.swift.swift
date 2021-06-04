
import Foundation
import UIKit

class FoodItemDetailRouter: PresenterToRouterFoodItemDetailProtocol {
    
    // MARK: Static methods
    static func createModule(with foodItem: FoodItem) -> UIViewController {
        let viewController = FoodItemDetailViewController()
        
        let presenter: ViewToPresenterFoodItemDetailProtocol & InteractorToPresenterFoodItemDetailProtocol = FoodItemDetailPresenter()
        
        viewController.foodItem = foodItem
        viewController.presenter = presenter
        viewController.presenter?.router = FoodItemDetailRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = FoodItemDetailInteractor()
        viewController.presenter?.interactor?.foodItem = foodItem
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
