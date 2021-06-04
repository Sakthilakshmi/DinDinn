import Foundation

class StringReplacementAlgorithm {
    let inputStringToReplace: String
    let inputNPositionToReplace: Int

    init(inputStringToReplace: String, inputNPositionToReplace: Int) {
        self.inputStringToReplace = inputStringToReplace
        self.inputNPositionToReplace = inputNPositionToReplace
    }

    func isInputContainsOnlyString() -> Bool {
        return self.isStringContainsOnlyString(inputStringToReplace: self.inputStringToReplace)
    }

    func isStringContainsOnlyString(inputStringToReplace: String) -> Bool {
        let set = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ")
        var isInputContainsOnlyString = true
        if inputStringToReplace.rangeOfCharacter(from: set.inverted) != nil {
            isInputContainsOnlyString = false
        }
        return isInputContainsOnlyString
    }

    func isCharacterUppercase(charToReplace: String) -> Bool {
        let isCharacterUppercase = (charToReplace == charToReplace.uppercased())
        return isCharacterUppercase
    }

    func getStringInLowercase(charToReplace: String) -> String {
        return charToReplace.lowercased()
    }

    func getStringInUppercase(charToReplace: String) -> String {
        return charToReplace.uppercased()
    }

    func isInputValid() -> Bool {
        let isInputStringToReplaceValid = self.isInputContainsOnlyString()
        guard isInputStringToReplaceValid == true else {
            print("Please give valid input string")
            return false
        }
        let isInputNPositionToReplaceValid = self.inputNPositionToReplace > 0
        guard isInputNPositionToReplaceValid == true else {
            print("Please give valid input n")
            return false
        }

        return true
    }

    func getReplacedString() -> String {
        let isInputValid = self.isInputValid()
        let totalNoOfAlphabets: Int = 26
        if(isInputValid) {
            var movablePositionNo = 0
            if(self.inputNPositionToReplace > totalNoOfAlphabets) {
                movablePositionNo = self.inputNPositionToReplace % totalNoOfAlphabets
            } else if(self.inputNPositionToReplace > 0 && self.inputNPositionToReplace <= totalNoOfAlphabets) {
                movablePositionNo = self.inputNPositionToReplace
            }

            var replacedString = ""
            let alphabetArray = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
            for char in self.inputStringToReplace {
                let isCharToReplaceUppercase = self.isCharacterUppercase(charToReplace: "\(char)")
                var charToReplace = "\(char)"
                if(isCharToReplaceUppercase) {
                    charToReplace = self.getStringInLowercase(charToReplace: "\(char)")
                }

                let charToReplaceIndex = alphabetArray.firstIndex(of: "\(charToReplace)")!
                let nextIndex = charToReplaceIndex + self.inputNPositionToReplace
                var replacedChar = alphabetArray[nextIndex]
                if(isCharToReplaceUppercase) {
                    replacedChar = self.getStringInUppercase(charToReplace: "\(replacedChar)")
                }
                replacedString = replacedString + replacedChar
            }
            return replacedString
        }
        return ""
    }
}

let stringReplacementAlgorithmObject = StringReplacementAlgorithm.init(inputStringToReplace: "abc", inputNPositionToReplace: 2)
let replacedString = stringReplacementAlgorithmObject.getReplacedString()
print("ReplacedString: \(replacedString)")


