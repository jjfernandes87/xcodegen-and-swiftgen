// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Localization {

  internal enum Components {
    internal enum ActivityCellView {
      /// $100.00 • 8:56 AM
      internal static let activityInfoLabel = Localization.tr("Localizable", "Components.ActivityCellView.activityInfoLabel")
      /// Mall
      internal static let activityNameLabel = Localization.tr("Localizable", "Components.ActivityCellView.activityNameLabel")
    }
    internal enum HomeHeaderView {
      /// $15,459.27
      internal static let label = Localization.tr("Localizable", "Components.HomeHeaderView.label")
      /// Savings
      internal static let savingsLabel = Localization.tr("Localizable", "Components.HomeHeaderView.savingsLabel")
      /// $100.00
      internal static let savingsValueLabel = Localization.tr("Localizable", "Components.HomeHeaderView.savingsValueLabel")
      /// Spending
      internal static let spendingLabel = Localization.tr("Localizable", "Components.HomeHeaderView.spendingLabel")
      /// $100.00
      internal static let spendingValueLabel = Localization.tr("Localizable", "Components.HomeHeaderView.spendingValueLabel")
    }
    internal enum TabBarController {
      /// Home
      internal static let home = Localization.tr("Localizable", "Components.TabBarController.Home")
      /// Transfers
      internal static let transfers = Localization.tr("Localizable", "Components.TabBarController.Transfers")
    }
    internal enum UserProfileHeaderView {
      /// Account 123456-7
      internal static let accountLabel = Localization.tr("Localizable", "Components.UserProfileHeaderView.accountLabel")
      /// Agency 0001
      internal static let agencyLabel = Localization.tr("Localizable", "Components.UserProfileHeaderView.agencyLabel")
      /// Devpass Bank
      internal static let bankLabel = Localization.tr("Localizable", "Components.UserProfileHeaderView.bankLabel")
      /// User Name
      internal static let nameLabel = Localization.tr("Localizable", "Components.UserProfileHeaderView.nameLabel")
    }
  }

  internal enum Generic {
    /// Default Configuration
    internal static let defaultConfiguration = Localization.tr("Localizable", "Generic.DefaultConfiguration")
    /// init(coder:) has not been implemented
    internal static let fatalError = Localization.tr("Localizable", "Generic.FatalError")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Localization {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
