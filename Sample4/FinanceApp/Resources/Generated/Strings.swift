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
    internal enum ActivityDetailsView {
      /// Mall
      internal static let activityNameLabel = Localization.tr("Localizable", "Components.ActivityDetailsView.activityNameLabel")
      /// Shopping
      internal static let categoryLabel = Localization.tr("Localizable", "Components.ActivityDetailsView.categoryLabel")
      /// $100
      internal static let priceLabel = Localization.tr("Localizable", "Components.ActivityDetailsView.priceLabel")
      /// Report a issue
      internal static let reportIssueButton = Localization.tr("Localizable", "Components.ActivityDetailsView.reportIssueButton")
      /// 8:57 AM
      internal static let timeLabel = Localization.tr("Localizable", "Components.ActivityDetailsView.timeLabel")
    }
    internal enum ConfirmationView {
      /// Nice!
      internal static let confirmationButton = Localization.tr("Localizable", "Components.ConfirmationView.confirmationButton")
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
    internal enum TransfersView {
      /// $0
      internal static let amountTextField = Localization.tr("Localizable", "Components.TransfersView.amountTextField")
      /// Choose contact
      internal static let chooseContactButton = Localization.tr("Localizable", "Components.TransfersView.chooseContactButton")
      /// Transfer
      internal static let transferButton = Localization.tr("Localizable", "Components.TransfersView.transferButton")
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

  internal enum Modules {
    internal enum ContactListViewController {
      /// Contact list
      internal static let titleView = Localization.tr("Localizable", "Modules.ContactListViewController.titleView")
    }
    internal enum HomeViewController {
      /// Profile
      internal static let rightBarButtonItem = Localization.tr("Localizable", "Modules.HomeViewController.rightBarButtonItem")
    }
    internal enum TransfersViewController {
      internal enum Transfer {
        /// Something went wrong :(
        internal static let error = Localization.tr("Localizable", "Modules.TransfersViewController.transfer.error")
        /// Your transfer was successful
        internal static let success = Localization.tr("Localizable", "Modules.TransfersViewController.transfer.success")
      }
    }
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
