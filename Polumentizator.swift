//
//  Polumentizator.swift
//  Polumenta2K15
//
//  Created by Maksa on 8/15/15.
//  Copyright (c) 2015 MM. All rights reserved.
//



import Foundation
class Polumentizator {
    func polumentizuj() -> String {
        let slova = [
        [ "Б", "В", "Г", "Д", "Ђ", "Ж", "З", "Ј", "К", "Л", "Љ", "М", "Н", "Њ", "П", "Р",
        "С", "Т", "Ћ", "Ф", "Х", "Ц", "Ч", "Џ", "Ш", "Б", "В", "Г", "Д", "Ђ", "Ж", "З",
        "Ј", "К", "Л", "Љ", "М", "Н", "Њ", "П", "Р", "С", "Т", "Ћ", "Ф", "Х", "Ц", "Ч",
        "Џ", "Ш", "Бл", "Бр", "Вл", "Вр", "Гл", "Гр", "Дл", "Др", "Жл", "Зл", "Зр",
        "Кр", "Кл", "Мр", "Мл", "Пј", "Пл", "Пљ", "Пњ", "Пр", "Св", "Сл", "См", "Сп",
        "Ст", "Тл", "Тр", "Фл", "Фљ", "Фњ", "Фр", "Хл", "Хр"],
        [ "а", "е", "и", "о", "у", "р"],
        [ "б", "в", "г", "д", "ђ", "ж", "з", "ј", "к", "л", "љ", "м", "н", "њ", "п", "р",
        "с", "т", "ћ", "ф", "х", "ц", "ч", "џ", "ш" ]];
        
        let l1 = slova[0].count
        let r = random() % (l1 - 1)
        let t1 = slova[0][r]
        
        var a : String
        
        if( t1.lengthOfBytesUsingEncoding(NSUnicodeStringEncoding) == 1 ) {
            a = t1.substringFromIndex( advance( t1.startIndex,
                t1.lengthOfBytesUsingEncoding(NSUnicodeStringEncoding) - 1))
        } else {
            a = t1.substringFromIndex( advance( t1.startIndex,
                t1.lengthOfBytesUsingEncoding(NSUnicodeStringEncoding) - 2))
        }
        var charset = "лрјљњЂЖЈЛЉНЊРЋЧЏШ"
        var found = t1.rangeOfString( a )
        var dec : Int;
        if( found != nil ) {
            dec = 2
        } else {
            dec = 1
        }
    
        var t2 = slova[1][ random() % (slova[1].count - dec )]
        var t3 = slova[2][ random() % (slova[2].count - 1 )]
        
        
        // todo 
        var t4 = ""
        
        var final = String(format: "%@%@%@o%@ Полумента", t1, t2, t3, t4 )
        return final
    }
}