//
//  ButtonView.swift
//  Calculator2
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ButtonView: View {
    var name: String
    @Binding var text: String
    @Binding var v1: String
    @Binding var v2: String
    @Binding var firstVal: Bool
    var body: some View {
        Button(name){
            //text = name
            if(firstVal){
                v1 = v1 + name
            }
            else{
                v2 = v2 + name
            }
        }
        .frame(width:120,height:60)
        .border(.black, width:6)
        .font(.largeTitle)
    }
}

