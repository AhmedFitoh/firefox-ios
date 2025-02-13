// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import Foundation

/// This struct defines all the non-standard image identifiers of icons and images used in the app.
/// Please see `StandardImageIdentifiers` for th standard ones.
/// When adding new identifiers, please respect alphabetical order.
/// Sing the song if you must.
public struct ImageIdentifiers {
    public static let badgeMask = "badge-mask"
    public static let emptySyncImageName = "emptySync"
    public static let firefoxFavicon = "faviconFox"
    public static let homeHeaderLogoBall = "fxHomeHeaderLogoBall"
    public static let homeHeaderLogoText = "fxHomeHeaderLogoText"
    public static let homepagePocket = "homepage-pocket"
    public static let logo = "splash"
    public static let logoAmex = "logo_amex"
    public static let logoDiners = "logo_diners"
    public static let logoDiscover = "logo_discover"
    public static let logoJcb = "logo_jcb"
    public static let logoMastercard = "logo_mastercard"
    public static let logoMir = "logo_mir"
    public static let logoUnionpay = "logo_unionpay"
    public static let logoVisa = "logo_visa"
    public static let menuBadge = "menuBadge"
    public static let menuWarningMask = "warning-mask"
    public static let navTabCounter = "nav-tabcounter"
    public static let qrCodeScanBorder = "qrcode-scanBorder"
    public static let qrCodeScanLine = "qrcode-scanLine"
    public static let qrCodeLight = "qrcode-light"
    public static let qrCodeLightTurnedOn = "qrcode-isLighting"
    public static let privateModeBadge = "privateModeBadge"
    public static let shoppingNoAnalysisImage = "shoppingNoAnalysisImage"
    public static let shoppingOptInCardImage = "shoppingOptInCardImage"
    public static let signinSync = "signin-sync"
    public static let sponsoredStar = "sponsored-star"
    public static let starEmpty = "starEmpty"
    public static let starFill = "starFill"
    public static let starHalf = "starHalf"
    public static let subtract = "subtract"
    public static let syncOpenTab = "sync_open_tab"

    public struct Onboarding {
        public struct HeaderImages {
            public static let welcomev106 = "onboardingWelcome"
            public static let syncv106 = "onboardingSync"
            public static let notification = "onboardingNotification"
            public static let searchWidget = "onboardingSearchWidget"
            public static let setToDock = "onboardingDock"
        }

        public struct MultipleChoiceButtonImages {
            public static let themeSystem = "onboardingDock"
            public static let themeDark = "onboardingDock"
            public static let themeLight = "onboardingDock"
            public static let toolbarTop = "onboardingDock"
            public static let toolbarBottom = "onboardingDock"
        }

        public struct ChallengeTheDefault {
            public static let notifications = "onboardingNotificationsCTD"
            public static let welcome = "onboardingWelcomeCTD"
            public static let sync = "onboardingSyncCTD"
        }
    }
}
