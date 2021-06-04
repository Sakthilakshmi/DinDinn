import UIKit

class OnBoardingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hosting = UIHostingController(rootView: onBoardingView())
        hosting.view.frame = UIScreen.main.bounds 
        hosting.view.backgroundColor = UIColor.white
        addChild(hosting)
        view.addSubview(hosting.view)
        hosting.didMove(toParent: self)
        
    }
}