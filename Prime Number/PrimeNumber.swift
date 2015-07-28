//
//  PrimeNumber.swift
//  Prime Number
//
//  Created by Tayseer Edouni on 6/14/15.
//  Copyright (c) 2015 Tayseer Edouni. All rights reserved.
//

import Foundation

func is_Prime(number : Int) -> Bool
{
    var isPrime = true
    
    if number == 1 {
        isPrime = false
    }
    
    if number != 2 && number != 1{
        
        for (var i = 2; i < number; i++){
            
            if number % i == 0 {
            isPrime = false
                
            }
        }
    }
    
    return isPrime
}