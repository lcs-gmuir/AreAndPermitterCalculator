//
//  RectangleView .swift
//  AreAndPermitterCalculator
//
//  Created by Samantha Stewart on 2023-01-19.
//

import SwiftUI

struct RectangleView_: View {
    @State var Legth: Double = 0
    @State var width: Double = 0
    @State var decimal: Double = 1
    
    
    
    var area: Double {
        return Legth * width
    }
    var peremiter: Double {
        return Legth + width
    }
    
    var body: some View {
        VStack(spacing: 15){
            HStack{
                Image("SCREENSHOT")
                    .resizable()
                    .scaledToFit()
                    .frame(width:250)
                  
                
                
            }
            Group{
                Text("length")
                    .font(.title2)
                    .bold()
                Slider(value: $Legth, in: 0...100, label: {Text("lenght")}, minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("100")} )
                
                Text("\(Legth)")
                    .font(.title2)
            }
            Group{
                Text("width")
                    .font(.title2)
                    .bold()
                Slider(value: $width, in: 0...100, label: {Text("lenght")}, minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("100")} )
                Text("\(width)")
                    .font(.title2)
            }
            Group{
                Text("area")
                    .font(.title2)
                    .bold()
                Text("\(area)")
                    .font(.title2)
            }
            Group{
                
                Text("peremiter")
                    .font(.title2)
                    .bold()
                Text("\(peremiter)")
                    .font(.title2)
                    
            }
            Group {
                Stepper("perescion", value: $decimal, in: 0...5)
                    .padding()
                Text("\(decimal)")
                
                
            }
        }
        
    }
}

struct RectangleView__Previews: PreviewProvider {
    static var previews: some View {
        RectangleView_()
    }
}
