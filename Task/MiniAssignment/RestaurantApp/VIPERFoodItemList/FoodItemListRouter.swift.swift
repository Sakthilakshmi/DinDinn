
import UIKit

class FoodItemListRouter: PresenterToRouterFoodItemListProtocol {
    
    
    // MARK: Static methods
    static func createModule() -> UINavigationController {
        
        let viewController = FoodItemListViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let presenter: ViewToPresenterFoodItemListProtocol & InteractorToPresenterFoodItemListProtocol = FoodItemListPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = FoodItemListRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = FoodItemListInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return navigationController
    }
    
    // MARK: - Navigation
    func pushToFoodItemDetail(on view: PresenterToViewFoodItemListProtocol, with foodItem: FoodItem) {
        let foodItemDetailViewController = FoodItemDetailRouter.createModule(with: foodItem)
            
        let viewController = view as! FoodItemListViewController
        viewController.navigationController?
            .pushViewController(foodItemDetailViewController, animated: true)
        
    }
    
}
