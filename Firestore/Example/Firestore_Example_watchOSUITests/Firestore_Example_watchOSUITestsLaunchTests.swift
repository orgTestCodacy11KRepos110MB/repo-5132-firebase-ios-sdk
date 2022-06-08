//
//  Firestore_Example_watchOSUITestsLaunchTests.swift
//  Firestore_Example_watchOSUITests
//
//  Created by Cheryl Lin on 2022-06-08.
//  Copyright © 2022 Google. All rights reserved.
//

import XCTest

class Firestore_Example_watchOSUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
