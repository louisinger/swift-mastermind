class Mastermind {
    var refLine = Line()
    var inputLine = Line.randomLine()

    func writeGame() {
        
        refLine = Line.randomLine()
        print("The reference line is: \(self.refLine)")
        print("The line inputs by the player is: \(self.inputLine)")
        print("Let's compare them:")
        print("inputLine.wellPlaced = \(inputLine.wellPlaced(compareTo: self.refLine))")
        print("inputLine.wrongPositions = \(inputLine.wrongPositions(compareTo: self.refLine))")
        
        print("Result array = \(inputLine.result(compareTo: self.refLine))")

        print("The reference line is: \(self.refLine)")


    }
    
    
}