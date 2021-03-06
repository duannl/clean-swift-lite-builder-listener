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

protocol ___VARIABLE_productName___Listener: class {}

final class ___VARIABLE_productName___Builder {
    
    class func build(withListener listener: ___VARIABLE_productName___Listener?) -> ___VARIABLE_productName___ViewController {
        
        let viewController = ___VARIABLE_productName___ViewController()
        // connecting all components together
        let presenter = ___VARIABLE_productName___Presenter(viewController: viewController)
        let interactor = ___VARIABLE_productName___Interactor(presenter: presenter)
        let router = ___VARIABLE_productName___Router(viewController: viewController, dataStore: interactor)
        
        viewController.interactor = interactor
        viewController.router = router
        viewController.listener = listener
        
        return viewController
    }
}
