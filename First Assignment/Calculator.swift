//
//  Calculator.swift
//  First Assignment
//
//  Created by tahani alrashidi on 8/19/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct Calculator: View {
    let column1 = ["AC", "7", "4", "1"]
    let column2 = ["±", "8", "5", "2"]
    let column3 = ["%", "9", "6", "3"]
    let column4 = ["÷", "X", "-", "+"]
    
    var body: some View {
        ZStack(alignment: .bottom){
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 15){
                HStack{
                    Spacer()
                    Text("555")
                        .font(.system(size: 115))
                        .fontWeight(.thin)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                }
                HStack{
                    VStack(spacing: 11){
                        ForEach(self.column1, id: \.self){
                            button in Text(button)
                                .modifier(CalculatorModifier())
                        }}
                    VStack(spacing: 11){
                        ForEach(self.column2, id: \.self){
                            button in Text(button)
                                .modifier(CalculatorModifier())
                        }}
                    VStack(spacing: 11){
                        ForEach(self.column3, id: \.self){
                            button in Text(button)
                                .modifier(CalculatorModifier())
                        }}
                    VStack(spacing: 11){
                        ForEach(self.column4, id: \.self){
                            button in Text(button)
                                .font(.system(size: 32))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(width: 85, height: 85)
                                .background(Color(#colorLiteral(red: 1, green: 0.6223508716, blue: 0.04401187599, alpha: 1)))
                                .cornerRadius(40)}}
                }
                HStack{
                    Text("0")
                        .font(.system(size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 178, height: 85)
                        .background(Color(#colorLiteral(red: 0.556738019, green: 0.5565260053, blue: 0.577188611, alpha: 1)))
                        .cornerRadius(40)
                    Text(".")
                        .modifier(CalculatorModifier())
                    Text("=")
                        .font(.system(size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 85, height: 85)
                        .background(Color(#colorLiteral(red: 1, green: 0.6223508716, blue: 0.04401187599, alpha: 1)))
                        .cornerRadius(40)
                }
            }.padding()
        }
    }
}

struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator()
    }
}

struct CalculatorModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32))
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .frame(width: 85, height: 85)
            .background(Color(#colorLiteral(red: 0.556738019, green: 0.5565260053, blue: 0.577188611, alpha: 1)))
            .cornerRadius(40)
    }
}

