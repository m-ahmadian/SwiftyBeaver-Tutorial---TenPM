/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit
import SwiftyBeaver

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupSwiftyBeaverLogging()
        SwiftyBeaver.verbose("Watch me bloviate. I'm definitely not important enough for the cloud")
        SwiftyBeaver.debug("I am more important, but the cloud still doesn't care.")
        SwiftyBeaver.info("Why doesn't the crypto cloud love me?")
        SwiftyBeaver.warning("I am serious enough for you to see!")
        SwiftyBeaver.error("Of course I'm going to show up in your console. You need to handle this")
        return true
  }

    func setupSwiftyBeaverLogging() {
        let console = ConsoleDestination()
        SwiftyBeaver.addDestination(console)

        let platform = SBPlatformDestination(appID: "Wxjbmo", appSecret: "9Masay7twlSfn7afzhzcdNcdwxIvze7A", encryptionKey: "np4nodvgvzrzq0oksroytszukmhqAsac")
        platform.minLevel = .warning
        SwiftyBeaver.addDestination(platform)
    }
}

