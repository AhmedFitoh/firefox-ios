// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import Foundation
import SwiftUI
import Shared

struct CreditCardSettingsEmptyView: View {
    struct Colors {
        let titleTextColor: Color
        let subTextColor: Color
        let toggleTextColor: Color
    }

    let colors: Colors
    @ObservedObject var toggleModel: ToggleModel

    var body: some View {
        ZStack {
            UIColor.clear.color
                .edgesIgnoringSafeArea(.all)
            GeometryReader { proxy in
                ScrollView {
                    VStack {
                        CreditCardAutofillToggle(
                            textColor: colors.toggleTextColor,
                            model: toggleModel)
                        .background(Color.white)
                        .padding(.top, 25)
                        Spacer()
                        Image(ImageIdentifiers.creditCardPlaceholder)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .aspectRatio(contentMode: .fit)
                            .fixedSize()
                            .padding([.top], 10)
                            .accessibility(hidden: true)
                        Text(String(format: .CreditCard.Settings.EmptyListTitle,
                                    AppName.shortName.rawValue))
                            .preferredBodyFont(size: 22)
                            .foregroundColor(colors.titleTextColor)
                            .multilineTextAlignment(.center)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                        Text(String.CreditCard.Settings.EmptyListDescription)
                            .preferredBodyFont(size: 16)
                            .foregroundColor(colors.subTextColor)
                            .multilineTextAlignment(.center)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            .padding([.top], -5)
                        Spacer()
                    }
                    .frame(minHeight: proxy.size.height)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct CreditCardSettingsEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        let toggleModel = ToggleModel(isEnabled: true)
        let colors = CreditCardSettingsEmptyView.Colors(titleTextColor: .gray,
                                                        subTextColor: .gray,
                                                        toggleTextColor: .gray)
        CreditCardSettingsEmptyView(colors: colors, toggleModel: toggleModel)
    }
}