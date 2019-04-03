import Foundation

class Mastermind {
    let code: Line
    let maxTry: Int = 12
    var playing = false
    var score : Int = 0
    var playerWin = false

    init() {
        self.code = Line.randomLine()
    }

    init(codeToFind theCode: Line) {
        self.code = theCode
    }

    func playGame() {
        var turnNumber = 0
        self.playing = true
        var playerLine : Line
        var lastResult : Array<Int>

        let startDate = Date()

        while(turnNumber < 12 && self.playing) {
            // --- Enter a line (A REMPLACER) 
            playerLine = Line.randomLine()
            // ---

            lastResult = playerLine.result(compareTo: self.code)

            // --- Print the line and his result (A REMPLACER)
            print("player plays: \(playerLine) | \(lastResult)")
            // ---

            if lastResult[0] == 4 {
                self.playing = false
                self.playerWin = true
            }
            else {
                turnNumber += 1
            }
        }
        if self.playing {self.playing = false}
        var elapsed = Date().timeIntervalSince(startDate)
        print("duration: \(elapsed)")
        

        if self.playerWin {
            // --- END OF GAME, the player won : display it (A REMPLACER)
                print("The player wins ! Good game !")
            // ---
            self.score = (12 - turnNumber)*10 + Int(elapsed/100)
            print("score = \(self.score)")
        } else {
            // --- END OF GAME, the player lost : display it (A REMPLACER)
                print("The player lost ! Maybe another time !")
            // ---
        }

    }

    
}