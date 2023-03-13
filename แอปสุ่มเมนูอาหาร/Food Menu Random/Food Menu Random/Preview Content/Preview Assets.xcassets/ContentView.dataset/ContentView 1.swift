//
//  ContentView.swift
//  Food Menu Random
//
//  Created by Kritanon Trachookul on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var name:String = "วันนี้กินอะไรดี"
    @State var menu:Int = 0
    @State var count:Int = 0
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text(name).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).padding(.bottom, 50.0)
                }
                .padding()
                Button("สุ่มเมนู") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    self.menu = Int.random(in: 1...10)
                    if self.menu == 1{
                        self.name = "กะเพราหมูสับ"
                    }else if self.menu == 2{
                        self.name = "ข้าวมันไก่"
                    }else if self.menu == 3{
                        self.name = "ไก่ทอด"
                    }else if self.menu == 4{
                        self.name = "ต้มยำกุ้ง"
                    }else if self.menu == 5{
                        self.name = "พะแนง"
                    }else if self.menu == 6{
                        self.name = "กะเพราไก่"
                    }else if self.menu == 7{
                        self.name = "ส้มตำปูม้า"
                    }else if self.menu == 8{
                        self.name = "แกงจืดเต้าหู้"
                    }else if self.menu == 9{
                        self.name = "ผัดไทย"
                    }else if self.menu == 10{
                        self.name = "กระเพาะหมู"
                    }else{
                        self.name = "Error"
                    }
                }
                .padding(0.0)
                .frame(width: 100.0, height: 50.0)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(5)
                .font(.title)
            }
            Text("สุ่มไปแล้ว " + String(count) + " ครั้ง")
                .padding(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

