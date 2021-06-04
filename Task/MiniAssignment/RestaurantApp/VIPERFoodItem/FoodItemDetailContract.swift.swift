
import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewFoodItemDetailProtocol: class {
    
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterFoodItemDetailProtocol: class {
    
    var view: PresenterToViewFoodItemDetailProtocol? { get set }
    var interactor: PresenterToInteractorFoodItemDetailProtocol? { get set }
    var router: PresenterToRouterFoodItemDetailProtocol? { get set }

    func viewDidLoad()
    
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorFoodItemDetailProtocol: class {
    
    var presenter: InteractorToPresenterFoodItemDetailProtocol? { get set }
    
    var foodItem: FoodItem? { get set }
    
    
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterFoodItemDetailProtocol: class {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterFoodItemDetailProtocol: class {
    
    static func createModule(with foodItem: FoodItem) -> UIViewController
}
