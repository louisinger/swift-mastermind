import Foundation

class Mastermind {
    let code: Line
    let maxTry: Int = 12
    var playing = false
    var score : Int = 0
    var playerWin = false
    var lines : Array<Line> = []
    var results : Array<Array<Int>> = []
    var elapsedTime: TimeInterval? = nil

    init() {
        self.code = Line.randomLine()
    }

    init(codeToFind theCode: Line) {
        self.code = theCode
    }

    

    
}