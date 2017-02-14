var money = 0.0

for _ in 1...30 {
    // Joe nourrit les vaches
    money -= 4
    // Joe vends son lait
    money += 30 * 0.50
}

print("\(money) €")