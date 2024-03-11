//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ListItem: Identifiable {
    let id = UUID()
    var item: String
    var count: Int
}

struct ContentView: View {
    
    @State var counters = [
        ListItem(item:"🤣", count: 0),
        ListItem(item:"😜", count: 0),
        ListItem(item:"😀", count: 0),
        ListItem(item:"🤩", count: 0),
        ListItem(item:"😂", count: 0)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach($counters){$counter in
                    HStack{
                        Text("\(counter.item) Counter: \(counter.count)")
                            .foregroundColor(.red)
                        Spacer()
                        ZStack{
                            Image(systemName: "plus")
                                .onTapGesture {
                                    counter.count += 1
                                }
                                .foregroundColor(.red)
                                .background(Color.white)
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.red, lineWidth: 2)
                                .frame(width: 30, height: 30)
   
                                
                                
                        }
                        
                
                        ZStack{
                            Image(systemName: "minus")
                                .onTapGesture {
                                    counter.count -= 1
                                }
                                .foregroundColor(.red)
                                .background(Color.white)
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.red, lineWidth: 2)
                                .frame(width: 35, height: 30)
                                
                               
                        }
                    }
                }.padding(10)
            }
            .navigationBarTitle("Emoji Counter", displayMode: .inline)
        }
        
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

