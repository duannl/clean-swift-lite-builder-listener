//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ___VARIABLE_productName___PresentationLogic {}

final class ___VARIABLE_productName___Presenter: ___VARIABLE_productName___PresentationLogic {
    weak var viewController: ___VARIABLE_productName___DisplayLogic?
    
    init(viewController: ___VARIABLE_productName___DisplayLogic?) {
        self.viewController = viewController
    }
}
