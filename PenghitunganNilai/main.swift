//
//  main.swift
//  PenghitunganNilai
//
//  Created by Aji Sahputra78 on 12/09/20.
//

import Foundation

print("Selamat Datang Di My Apps")
print("-------------------------")
print("Masukan total nilai yang akan di nilai", terminator: ": "); let total = readLine() ?? ""
print("-------------------------")

if let totalItem : Int = Int(total){
    var allValues = [Int]()
    for index in 1...totalItem {
        print("Masukkanlah item ke \(index)", terminator: ": "); let newItem = Int(readLine() ?? "") ?? 0
        allValues.append(newItem)
    }
 
    print("----------------------------------")
    var sum :Int = 0
 
    for (_, value) in allValues.enumerated() {
        sum += value
    }
 
    let average = sum / totalItem
    var grade = ""
 
    switch average {
    case 0...40:
        grade = "E";
        break
    case 41...50:
        grade = "D";
        break
    case 51...60:
        grade = "C";
        break
    case 61...70:
        grade = "C+";
        break
    case 71...80:
        grade = "B";
        break
    case 81...90:
        grade = "B+";
        break
    case 91...100:
        grade = "A";
        break
    default:
        grade = "Tidak valid";
    }
 
    if grade != "Tidak valid" {
        print("Anda mendapatkan Grade nilai \(grade) dari \(total) nilai yang ada. \nAnda mendapatkan total nilai \(sum) dengan rata-rata \(average).")
    }else{
        print("Nilai tidak Valid")
    }
} else {
    print("Input tidak valid")
}
 
print("----------------------------------")

