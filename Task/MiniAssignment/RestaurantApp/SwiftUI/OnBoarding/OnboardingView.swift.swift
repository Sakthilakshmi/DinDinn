import Foundation
import UIKit

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack {
            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews).edgesIgnoringSafeArea(.all)

            HStack(alignment: Alignment.center) {
                PageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
                Spacer()
            }.padding(.top, 150)

            SlideOverCard {
                
                FoodItemListRouter.createModule().topViewController.view
            }

        }.edgesIgnoringSafeArea(.all)
    }
}