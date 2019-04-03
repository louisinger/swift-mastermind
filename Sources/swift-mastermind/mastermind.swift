class Mastermind {
    var testLine = Line()

    func writeGame() {
        print(self.testLine)
        testLine = Line.randomLine()
        print(self.testLine)
    }
    
    
}