class FoodPantry
    def checkStatusInventory
        raise NotImplementedError, 'This will be implemented in the below class'
    end
end
class Inventory < FoodPantry
    def checkStatusInventory
        return self.clone
    end
    def Inventory_inside
        puts "Food Pantry"
    end
end
class Items < Inventory
    def ItemDetails
        return ItemID
    end
end
pantryObject = Inventory.new

pObj = pantryObject.checkStatusInventory
pObj.Inventory_inside