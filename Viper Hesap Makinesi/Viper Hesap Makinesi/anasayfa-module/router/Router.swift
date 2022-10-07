//
//  Router.swift
//  Viper Hesap Makinesi
//
//  Created by Berk Ersoz on 7.10.2022.
//

import Foundation

class Router : PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        //View katmanı değişkenleri
        ref.presenterNesnesi = presenter
        
        //Presenter katmanı değişkenleri
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
        
        //Interactor katmanı değişkenleri
        ref.presenterNesnesi?.interactor?.presenter = presenter
    }
}
