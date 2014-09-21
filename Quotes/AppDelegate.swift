//
//  AppDelegate.swift
//  Quotes
//
//  Created by Yihang Ho on 9/20/14.
//  Copyright (c) 2014 Yihang Ho. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var quoteTextField: NSTextField!
    @IBOutlet weak var authorTextField: NSTextField!

    var quotes: [Quote] = []

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application

        // Seed PRNG
        srandom(UInt32(time(nil)))

        quotes.append(Quote(quote: "Have no fear of perfection - you'll never reach it.", author: "Salvador Dali"))
        quotes.append(Quote(quote: "History will be kind to me for I intend to write it.", author: "Winston Churchill"))
        quotes.append(Quote(quote: "You have to learn the rules of the game. And then you have to play better than anyone else.", author: "Albert Einstein"))
        quotes.append(Quote(quote: "We cannot change the cards we are dealt, just how we play the hand.", author: "Randy Pausch"))
        quotes.append(Quote(quote: "Always remember that you are absolutely unique. Just like everyone else.", author: "Margaret Mead"))
        quotes.append(Quote(quote: "Whether you come back by page or by the big screen, Hogwarts will always be there to welcome you home.", author: "J. K. Rowling"))
        quotes.append(Quote(quote: "Quality is not an act, it is a habit.", author: "Aristotle"))
        quotes.append(Quote(quote: "Simplicity is the ultimate sophistication.", author: "Leonardo da Vinci"))
        quotes.append(Quote(quote: "Three things cannot be long hidden: the sun, the moon, and the truth.", author: "Buddha"))

        displayRandomQuote()
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }

    func displayRandomQuote() {
        let index = random() % quotes.count

        quoteTextField.stringValue = quotes[index].quote
        authorTextField.stringValue = "-- " + quotes[index].author
    }

    @IBAction func showMoreQuote(sender: AnyObject) {
        displayRandomQuote()
    }
}

struct Quote {
    let quote: String
    let author: String
}