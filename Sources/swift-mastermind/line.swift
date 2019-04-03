class Line: CustomStringConvertible {
    var colors = initialLine()

    func changeColor(index: Int, color: Color) {
        self.colors[index] = color
    }

    class func randomLine() -> Line
    {
        let newLine = Line()
        for i in 0...3 {
            let randomNumber = Int.random(in: 1...6)
            let randomColor = Color(rawValue: randomNumber)
            if randomColor != nil {
                newLine.changeColor(index: i, color: randomColor!)
            }
            
        }
        return newLine
    }

    class func initialLine() -> Array<Color>
    {
        return [Color.black, Color.black, Color.black, Color.black]
    }

    var description: String {
        return "\(colors[0]) - \(colors[1]) - \(colors[2]) - \(colors[3])"
    }
}