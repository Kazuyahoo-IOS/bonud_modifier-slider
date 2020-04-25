//
//  ContentView.swift
//  bonud_modifier&slider
//
//  Created by 王瑋 on 2020/4/25.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var opacity: Double = 0
    @State private var myRed: CGFloat = 129
    @State private var myGreen: CGFloat = 110
    @State private var myBlue: CGFloat = 96
    @State private var cornerRadius: CGFloat = 0
    @State private var border: CGFloat = 0
    @State private var shadow: CGFloat = 0
    @State private var brightness: Double = 0
    @State private var colorMultiply: Color = Color.red
    @State private var contrast: Double = 1
    @State private var grayscale: Double = 0
    @State private var hueRotation: Double = 0
    @State private var saturation: Double = 1
    @State private var rotationEffect: Double = 1
    var body: some View {
        VStack{
            ZStack{
                Color(red:129/255,green:110/255,blue:96/255)
                Image("flower")
                    .resizable()
                    .frame(width:230,height:300)
                    .opacity(opacity)
                Image("Mr.bean")
                    .resizable()
                    .frame(width:300,height:350)
                    .border(Color.black, width: border)
                    .cornerRadius(cornerRadius)
                    .shadow(radius: shadow)
                    .brightness(brightness)
                    //.colorMultiply(Color.red)
                    .contrast(contrast)
                    .grayscale(grayscale)
                    .hueRotation(Angle(degrees: hueRotation))
                    .saturation(saturation)
                    .rotationEffect(Angle(degrees:rotationEffect))
                
            }.background(Color.black)
            
            VStack{
                Form{
                    Group{
                        OpacitySlider(opacity: $opacity)
                        RedSlider(myRed: $myRed)
                        GreenSlider(myGreen: $myGreen)
                        BlueSlider(myBlue: $myBlue)
                        CornerRadiusSlider(cornerRadius: $cornerRadius)
                        BorderSlider(border: $border)
                        ShadowSlider(shadow: $shadow)
                    }
                    Group{
                        BrightnessSlider(brightness: $brightness)
                        ColorMultiplySlider(colorMultiply: $colorMultiply)
                        ContrastSlider(contrast: $contrast)
                        GrayscaleSlider(grayscale: $grayscale)
                        HueRotationSlider(hueRotation: $hueRotation)
                        SaturationSlider(saturation: $saturation)
                        RotationEffectSlider(rotationEffect: $rotationEffect)
                    }
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct OpacitySlider: View {
    @Binding var opacity: Double
    var body: some View {
        HStack{
            Text("透明度")
            Slider(value:$opacity,in: 0...1)
        }
    }
}

struct RedSlider: View {
    @Binding var myRed: CGFloat
    var body: some View {
        HStack{
            Text("紅色")
            Slider(value:$myRed,in: 0...255)
        }
    }
}
struct GreenSlider: View {
    @Binding var myGreen: CGFloat
    var body: some View {
        HStack{
            Text("綠色")
            Slider(value:$myGreen,in: 0...255)
        }
    }
}
struct BlueSlider: View {
    @Binding var myBlue: CGFloat
    var body: some View {
        HStack{
            Text("藍色")
            Slider(value:$myBlue,in: 0...255)
        }
    }
}

struct CornerRadiusSlider: View {
    @Binding var cornerRadius: CGFloat
    var body: some View {
        HStack{
            Text("圓角")
            Slider(value: $cornerRadius,in: 0...100)
        }
    }
}

struct BorderSlider: View {
    @Binding var border: CGFloat
    var body: some View {
        HStack{
            Text("邊框")
            Slider(value: $border,in: 0...10)
        }
    }
}

struct ShadowSlider: View {
    @Binding var shadow: CGFloat
    var body: some View {
        HStack{
            Text("陰影")
            Slider(value: $shadow,in: 0...10)
        }
    }
}

struct BrightnessSlider: View {
    @Binding var brightness: Double
    var body: some View {
        HStack{
            Text("亮度")
            Slider(value: $brightness,in: 0...0.9)
        }
    }
}

struct ColorMultiplySlider: View {
    @Binding var colorMultiply: Color
    var body: some View {
        HStack{
            Text("色彩增值")
            //Slider(value: $colorMultiply,in: 0...1)
        }
    }
}

struct ContrastSlider: View {
    @Binding var contrast: Double
    var body: some View {
        HStack{
            Text("對比")
            Slider(value: $contrast,in: -1...3)
        }
    }
}

struct GrayscaleSlider: View {
    @Binding var grayscale: Double
    var body: some View {
        HStack{
            Text("灰階")
            Slider(value: $grayscale,in: 0...0.9)
        }
    }
}

struct HueRotationSlider: View {
    @Binding var hueRotation: Double
    var body: some View {
        HStack{
            Text("色相旋轉")
            Slider(value: $hueRotation,in: 0...360)
        }
    }
}

struct SaturationSlider: View {
    @Binding var saturation: Double
    var body: some View {
        HStack{
            Text("顏色飽和度")
            Slider(value: $saturation,in: -1...3)
        }
    }
}

struct RotationEffectSlider: View {
    @Binding var rotationEffect: Double
    var body: some View {
        HStack{
            Text("旋轉圖片")
            Slider(value: $rotationEffect,in: 0...360)
        }
    }
}
