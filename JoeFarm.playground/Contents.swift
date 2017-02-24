// Le prix du voyage
var price = 1499.0

// L'argent de Joe
var money = 0.0

// Le nombre de jours pendant lesquels Joe doit économiser
var numberOfDay = 0

// La grange de Joe : [lait, blé, laine]
var barn = [0, 0, 0]

while money < price {
    // Joe nourrit les vaches tous les jours
    money -= 4

    // On calcule la taille de la grange
    var barnSize = 0
    for goods in barn {
        barnSize += goods
    }

    if barnSize >= 500 {
        // On vends !
        money += Double(barn[0]) * 0.50 // Le lait
        money += Double(barn[1]) * 0.30 // Le blé
        money += Double(barn[2]) * 1 // La laine

        // On vide la grange
        barn = [0, 0, 0]
    } else {
        // C'est une journée normale

        if numberOfDay % 30 == 1 {
            // Joe moissonne
            barn[1] += 100
        } else if numberOfDay % 30 == 10 || numberOfDay % 30 == 20 {
            // Joe tond les moutons
            barn[2] += 30
        } else {
            // Joe trait les vaches
            barn[0] += 30
        }
    }

    // On passe au jour suivant
    numberOfDay += 1
}

print("Il aura fallu \(numberOfDay) jours à Joe pour économiser \(money) €")