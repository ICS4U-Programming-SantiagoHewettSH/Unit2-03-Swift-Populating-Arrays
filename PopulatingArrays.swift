//
// PopulatingArrays.swift
//
// Created by Santiago Hewett
// Created on 2025/03/22
// Version 1.0
// Copyright (c) 2025 Santiago Hewett. All rights reserved.
//
// This program generates 50 random integers (10 per line for 5 lines),
// sorts them in ascending order, and calculates their average.
//

import Foundation

// Constant for the number of integers per line
let MAX_ARRAY = 10

// Function to generate an array of random integers
func populateArray() -> [Int] {
    return (1...MAX_ARRAY).map { _ in Int.random(in: 1...100) }
}

// Generate and process 5 lines of random integers
for _ in 0..<5 {
    // Generate an array of random integers
    var arrayRandomInts = populateArray()

    // Calculate the sum
    let sum = arrayRandomInts.reduce(0, +)

    // Calculate the average
    let average = Double(sum) / Double(MAX_ARRAY)

    // Print the unsorted array
    print("Unsorted array:", arrayRandomInts.map { String($0) }.joined(separator: " "))

    // Sort the array
    arrayRandomInts.sort()

    // Print the sorted array
    print("Sorted array:  ", arrayRandomInts.map { String($0) }.joined(separator: " "))

    // Print the average
    print("Average: \(String(format: "%.2f", average))\n")
}
