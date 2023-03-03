////
////  String+PigLatin.swift
////  PigLatin
////
////  Created by Natasha on 3/1/23.
////
//
//import Foundation
//
//extension String {
//    func stringByPigLatinization() -> String {
//        let vowels: Set = (["a", "e", "i", "o", "u"])
//        let consonant = Set(["b" , "c" , "d" , "f", "g", "h", "j" , "k" ,"l" , "m" , "n" , "p" , "q" , "r", "s" , "t" , "v" , "w" , "z"])
//        let array = self.split(separator: " ")
//        var word = ""
//        var cluster = ""
//        var count = 0
//        for i in array { //               look if there just one vowel + hay
//            var pig = String(i)
//            if vowels.contains(String(i[i.startIndex])) {
//                pig += "hay" //               look if there just one consoant + add consoant + ay
//            } else {
//                var moveCons = pig.removeFirst()
//                pig += String(moveCons)
//                for j in 1...2 {
//                    //               if there just two consoants + rm && add consoants + ay
//                    if consonant.contains(String(i[i.startIndex])) {
//                        var moveCons = pig.removeFirst()
//                        pig += String(moveCons)
//                    } else {
//                        break
//                    }
//                }
//                pig += "ay"
//            }      // copied this from internet
//            if CharacterSet.uppercaseLetters.contains(i.unicodeScalars[i.startIndex]) {
//                pig = String(pig.capitalized)          }
//            cluster += pig
//            count += 1
//            if count < array.count {
//                cluster += " "
//            }
//        }
//        return cluster
//    }
//}
//
