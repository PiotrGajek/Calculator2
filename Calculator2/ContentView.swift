//
//  ContentView.swift
//  Calculator2
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State var firstVal: Bool = true
    @State var v1: String = ""
    @State var v2: String = ""
    @State var thing: String = ""
    @State var result: Double = 0
    var body: some View {
        VStack {
            Text("Kalkulator")
                .foregroundColor(.blue)
            HStack{
                Text(String(v1))
                Text(thing)
                Text(String(v2))
            }
            Text(text)
                .foregroundColor(.blue)
                .frame(width:375,height:60)
                .border(.black, width:6)
            HStack{
                ForEach(1..<4, id: \.self){index in
                    VStack{
                        ForEach(0..<3, id: \.self){index2 in
                            ButtonView(name: String(index+index2*3), text: $text, v1: $v1, v2: $v2, firstVal: $firstVal)
                        }
                    }
                }
            }
            HStack{
                Button("+"){
                    thing="+"
                    firstVal=false
                }
                .frame(width:120,height:60)
                .border(.black, width:6)
                ButtonView(name: String(0), text: $text, v1: $v1, v2: $v2, firstVal: $firstVal)
                Button("-"){
                    thing="-"
                    firstVal=false
                }
                .frame(width:120,height:60)
                .border(.black, width:6)
            }
            HStack{
                Button("*"){
                    thing="*"
                    firstVal=false
                }
                .frame(width:120,height:60)
                .border(.black, width:6)
                Button("sin"){
                    thing="sin"
                    v1=""
                    firstVal=false
                }
                .frame(width:120,height:60)
                .border(.black, width:6)
                Button("/"){
                    thing="/"
                    firstVal=false
                }
                .frame(width:120,height:60)
                .border(.black, width:6)
            }
            Button("="){
                switch(thing){
                case "+":
                    result=Calculation().addTwoInt(of: v1, with: v2)
                case "-":
                    result=Calculation().subtractTwoInt(of: v1, with: v2)
                case "*":
                    result=Calculation().multiplyTwoInt(of: v1, with: v2)
                case "/":
                    result=Calculation().divideTwoInt(of: v1, with: v2)
                case "sin":
                    result=Calculation().sinInt(of: v2)
                default:
                    result = Double(v1)!
                }
                text=String(result)
                v1=String(result)
                v2=""
                thing=""
                firstVal=false
            }
            .frame(width:375,height:60)
            .border(.black, width:6)
            Button("wyczyść"){
                result=0
                text=""
                v1=""
                v2=""
                thing=""
                firstVal=true
            }
            .frame(width:375,height:60)
            .border(.black, width:6)
        }
        .padding()
        .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
