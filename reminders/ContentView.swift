//
//  ContentView.swift
//  reminders
//
//  Created by Will Peterson on 10/25/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isEditing: Bool = false
    // TODO: Add an @State property to hold a RemindersPage struct
    @State private var page: RemindersPage = RemindersPage(title: "Todo List", items: [], color: .red)
    
    var body: some View {
        VStack {
            // TODO: Add header view
            HStack {
                Text(page.title)
                    .font(.system(size: 40, weight: .semibold))
                Spacer()
                
                
                Button {
                    isEditing.toggle()
                } label: {
                    Image(systemName: "info.circle")
                        .fontWeight(.semibold)
                }
                
            }
            .padding()
            .foregroundStyle(page.color)
            
            List {
                // TODO: Loop through the page's reminders using ForEach
                ForEach($page.items) { $reminder in
                    // TODO: Display each reminder row
                    ReminderRow(reminder: $reminder, selectedColor: page.color)
                }
                .onDelete { indexSet in
                    page.items.remove(atOffsets: indexSet)
                }
            }
            .padding(.horizontal, 10)
            .listStyle(.plain)
            
            // TODO: Add footer view
            
            HStack {
                Spacer()
                Button {
                    page.items.append(Reminder(title: ""))
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .foregroundStyle(page.color)
                        .font(.system(size: 30))
                }
                
            }
            .padding(30)
        }
        .sheet(isPresented: $isEditing) {
            // TODO: Add remaining binding
            EditSheet(selectedColor: $page.color, title: $page.title)
        }
    }
}

#Preview {
    ContentView()
}
