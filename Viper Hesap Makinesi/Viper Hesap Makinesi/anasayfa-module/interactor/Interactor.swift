//
//  Interactor.swift
//  Viper Hesap Makinesi
//
//  Created by Berk Ersoz on 7.10.2022.
//

import Foundation

class Interactor : PresenterToInteractorProtocol {

    
    var presenter: InteractorToPresenterProtocol?
    
    func topla(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1),let s2 = Int(sayi2) {
            let toplam = s1 + s2
            presenter?.presenteraVeriGonder(sonuc: String(toplam))
        }
    }
    
    func fark(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1),let s2 = Int(sayi2) {
            let farki = s1 - s2
            presenter?.presenteraVeriGonder(sonuc: String(farki))
        }
    }
    
    func modAl(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1),let s2 = Int(sayi2) {
            let mod = s1 % s2
            presenter?.presenteraVeriGonder(sonuc: String(mod))
        }
    }
    
    func carp(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1),let s2 = Int(sayi2) {
            let carpim = s1 * s2
            presenter?.presenteraVeriGonder(sonuc: String(carpim))
        }
    }
    
    func bolum(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1),let s2 = Int(sayi2) {
            let bolumu = s1 / s2
            presenter?.presenteraVeriGonder(sonuc: String(bolumu))
        }
    }
    
}
