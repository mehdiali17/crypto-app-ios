//
//  PorfolioDataService.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 3/5/25.
//

import Foundation
import CoreData

class PortfolioDataService {
    
    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioContainer"
    private let entityName: String = "PortfolioEntity"
    
    @Published var savedEntities: [PortfolioEntity] = []
    
    init() {
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { (_, error) in
            if let error = error {
                print("Error loadPersistentStores: ",error.localizedDescription)
            }
            self.getPortfolio()
        }
    }
    
    func updatePortfolio(coin: CoinModel, amount: Double) {
        
        //check if coin is in portfolio
        if let entity = savedEntities.first(where: { (savedEntity) -> Bool in
            return savedEntity.coinID == coin.id
        }) {
            if amount > 0 {
                update(entity: entity, amount: amount)
            } else {
                delete(entity: entity)
            }
        } else {
            add(coin: coin, amount: amount)
        }
        
    }
    
    private func getPortfolio() {
        let request =  NSFetchRequest<PortfolioEntity >(entityName: entityName)
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("Error getting portfolio: ", error.localizedDescription)
        }
    }
    
    private func add(coin: CoinModel, amount: Double) {
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
        applyChanges()
    }
    
    private func save() {
        do {
            try container.viewContext.save()
        } catch let error {
            print("Error saving portfolio: ",error.localizedDescription)
        }
    }
    
    private func applyChanges() {
        save()
        getPortfolio()
    }
    
    private func update(entity:PortfolioEntity, amount: Double) {
        entity.amount = amount
        applyChanges()
    }
    
    private func delete(entity: PortfolioEntity) {
        container.viewContext.delete(entity)
        applyChanges()
    }
    
}
