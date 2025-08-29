//
//  AccountView.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var birthDate: Date = Date()
    @State private var extraNapkins: Bool = false
    @State private var frequentRefilles: Bool = false

    var body: some View {
        NavigationStack{
            Form{
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled(true)
                    
                    DatePicker("BirthDay", selection: $birthDate, displayedComponents: .date)
                    
                    Button{
                        print("Save")
                    }label: {
                        Text("Save Changes")
                    }
                } header: {
                    Text("Personal Info")
                }

                Section {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    
                    Toggle("Frequent Refilles", isOn: $frequentRefilles)
                       
                } header: {
                    Text("Requests")
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))//will applied for all toggles in the section

            }
            .navigationTitle("😃   Account")
        }
    }
}

#Preview {
    AccountView()
}
