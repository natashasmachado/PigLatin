//
//  String+PigLatin.swift
//  PigLatin
//
//  Created by Natasha on 3/1/23.
//
import Foundation

extension String {
    func stringByPigLatinization() -> String {
        let vowels: Set = (["a", "e", "i", "o", "u" , "A", "E" , "I" , "O" , "U"])
        let consonant = Set(["b" , "c" , "d" , "f", "g", "h", "j" , "k" ,"l" , "m" , "n" , "p" , "q" , "r", "s" , "t" , "v" , "w" , "z"])
        let array = self.split(separator: " ")
        var cluster = ""
        var count = 0
        for i in array {                          //look if start with vowel + hay
            var word = String(i)
            if vowels.contains(String(i[i.startIndex])) {
                word += "hay"                        //look if start with consonant.remove + moveCons  + ay
            } else {
                let moveCons = word.removeFirst()
                word += String(moveCons)
                for _ in 1...2 {         //if there more than two consonant.remove(consCount(1..2)) + moveCons  + ay
                    if consonant.contains(String(i[i.startIndex])) {
                        let moveCons = word.removeFirst()
                        word += String(moveCons)
                    } else {
                        break
                      }
                }
                word += "ay"
              }                             // copied this from internet - couldn't find a shorter version
            if CharacterSet.uppercaseLetters.contains(i.unicodeScalars[i.startIndex]) {
                word = String(word.capitalized)
            }
            cluster += word
            count += 1
            if count < array.count {
                cluster += " "
            }
        }                                       // return cluster.capitalized -- shorter code but capitalize all the words
        return cluster
    }
}

