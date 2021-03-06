//
//  Calculator.swift
//  First Assignment
//
//  Created by tahani alrashidi on 8/19/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct Calculator: View {
   @State var column1 = ["AC", "7", "4", "1"]
   @State var column2 = ["±", "8", "5", "2"]
   @State var column3 = ["%", "9", "6", "3"]
   @State var column4 = ["÷", "×", "-", "+"]
   @State var number: String
    
    var body: some View {
        ZStack(alignment: .bottom){
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 15){
                Text(number)
                    .font(.system(size: 115))
                    .fontWeight(.thin)
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .padding(.leading, 170)
                HStack{
                    VStack(spacing: 11){
                        ForEach(self.column1, id: \.self){
                            button in Button(action: {
                                if button == "AC"{
                                    self.number = "0"
                                }else{
                                self.number = button
                                }
                            }) {
                                Text(button)
                                    .modifier(CalculatorModifierGray())
                            }
                        }}
                    VStack(spacing: 11){
                        ForEach(self.column2, id: \.self){
                            button in Button(action: {
                                if button == "±"{
                                    self.number = ""
                                }else{
                                self.number = button
                                }
                            }) {
                                Text(button)
                                    .modifier(CalculatorModifierGray())
                            }
                        }}
                    VStack(spacing: 11){
                        ForEach(self.column3, id: \.self){
                            button in Button(action: {
                               if button == "%"{
                                    self.number = ""
                                }else{
                                self.number = button
                                }
                            }) {
                                Text(button)
                                    .modifier(CalculatorModifierGray())
                            }
                        }}
                    VStack(spacing: 11){
                        ForEach(self.column4, id: \.self){
                            button in
                               Button(action: {
                                self.number = ""
                                }) {
                                    Text(button)
                                        .modifier(CalculatorModifierOrange())
                                }
                        }}
                }
                HStack{
                    Button(action: {
                        self.number = "0"
                    }) {
                        Text("0")
                            .font(.system(size: 32))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 178, height: 85)
                            .background(Color(#colorLiteral(red: 0.556738019, green: 0.5565260053, blue: 0.577188611, alpha: 1)))
                            .cornerRadius(40)
                    }
                    Button(action: {
                        self.number = ""
                    }) {
                        Text(".")
                            .modifier(CalculatorModifierGray())
                    }
                    Button(action: {
                        self.number = ""
                    }) {
                        Text("=")
                            .modifier(CalculatorModifierOrange())
                        
                    }
                    
                    
                }
            }.padding()
        }
    }
}

struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator(number: "0")
    }
}

struct CalculatorModifierGray: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32))
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .frame(width: 85, height: 85)
            .background(Color(#colorLiteral(red: 0.556738019, green: 0.5565260053, blue: 0.577188611, alpha: 1)))
            .cornerRadius(40)
    }
}

struct CalculatorModifierOrange: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32))
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .frame(width: 85, height: 85)
            .background(Color(#colorLiteral(red: 1, green: 0.6223508716, blue: 0.04401187599, alpha: 1)))
            .cornerRadius(40)
    }
}


