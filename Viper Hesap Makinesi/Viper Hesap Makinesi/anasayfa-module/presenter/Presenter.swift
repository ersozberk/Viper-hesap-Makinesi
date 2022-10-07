//
//  Presenter.swift
//  Viper Hesap Makinesi
//
//  Created by Berk Ersoz on 7.10.2022.
//

import Foundation

class Presenter : ViewToPresenterProtocol {
    var interactor: PresenterToInteractorProtocol?
    var view: PresenterToViewProtocol?
    
    func toplamaYap(sayi1: String, sayi2: String) {
        interactor?.topla(sayi1: sayi1, sayi2: sayi2)
    }
    func farkiAl(sayi1: String, sayi2: String) {
        interactor?.fark(sayi1: sayi1, sayi2: sayi2)
    }
    
    func modunuAl(sayi1: String, sayi2: String) {
        interactor?.modAl(sayi1: sayi1, sayi2: sayi2)
    }
    
    func carpmaYap(sayi1: String, sayi2: String) {
        interactor?.carp(sayi1: sayi1, sayi2: sayi2)
    }
    
   func bolumuYap(sayi1: String, sayi2: String) {
       interactor?.bolum(sayi1: sayi1, sayi2: sayi2)
   }
    
    
}

extension Presenter : InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc: String) {
        view?.vieweVeriGonder(sonuc: sonuc)
    }
}

