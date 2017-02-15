var money = 0.0

for day in 1...30 {
    // Joe nourrit les vaches tous les jours
    money -= 4

    if day == 1 {
        // Joe moissonne
        money += 100 * 0.30
    } else if day == 10 || day == 20 {
        // Joe tonds les moutons
        money += 30 * 1
    } else {
        // Joe vends son lait
        money += 30 * 0.50
    }
}

print("\(money) €")