
import Foundation

class FoodItemDetailPresenter: ViewToPresenterFoodItemDetailProtocol {

    // MARK: Properties
    weak var view: PresenterToViewFoodItemDetailProtocol?
    var interactor: PresenterToInteractorFoodItemDetailProtocol?
    var router: PresenterToRouterFoodItemDetailProtocol?
    
    func viewDidLoad() {
        print("Presenter is being notified that the View was loaded.")
    }
    
}
