import UIKit

var colorArray = ["red", "green", "black", "blue", "yellow", "red", "green", "yellow", "red", "red", "green", "green", "gray", "purple", "orange", "gray", "orange", "gray", "blue", "red", "green", "yellow", "orange", "purple", "black", "red", "blue", "green", "orange", "blue", "white", "yellow", "blue", "green", "orange", "purple", "blue", "black"]

func getMostCommonColor(array: [String]) -> [String] {
    var topColors: [String] = []
    var colorDictionary: [String : Int] = [:]
    
    // Step 1: Create Dictionary by iterating through array
    for color in array {
        // if color has count, add 1
        if let count = colorDictionary[color] {
            colorDictionary[color] = count + 1
        } else {
            // if color has not been counted yet, color now = 1 at index of color
            colorDictionary[color] = 1
        }
    }
    
    let highestValue = colorDictionary.values.max()
    
    // Step 2: Iterate over Dictionary to find highest value
    for (color, count) in colorDictionary {
        if colorDictionary[color] == highestValue {
            topColors.append(color)
        }
    }
    
    return topColors
}

getMostCommonColor(array: colorArray)
