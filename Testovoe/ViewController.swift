//
//  ViewController.swift
//  Testovoe
//
//  Created by Rasikon on 18.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let str = "\nab\n".outputRange(position: 1)
        print(str)
        print(str.firstHalf)
        print(str.secondHalf)
    }
    
}

extension String {
    func outputRange(position: Int) -> (firstHalf: String, secondHalf: String) {
        let index = self.index(self.startIndex, offsetBy: position)
        let symbol = self[index]
        
        if symbol.isNewline || symbol.isWhitespace {
            return(firstHalf: "", secondHalf: "")
        }
        
        let firstElement = self[..<index].split(separator: "\n").last
        let secondElement = self[index...].split(separator: "\n").first
        
        let firstHalf = String(firstElement ?? "")
        let secondHalf = String(secondElement ?? "")
        
        return(firstHalf: firstHalf, secondHalf: secondHalf)
    }
}


