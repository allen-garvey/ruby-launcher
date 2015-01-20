//
//  AppDelegate.swift
//  Ruby Launcher
//
//  Created by Allen Garvey on 1/7/15.
//  Copyright (c) 2015 Allen Garvey. Released under the MIT License.
//
//The MIT License (MIT)
//
//Copyright (c) <2015> <Allen Garvey>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
	
	let defaultProgram = "ruby"; //change if your ruby version is somewhere else
	let programFileExtension = ".rb"; //use if require filtering in the NSOpenPanel


	func applicationDidFinishLaunching(aNotification: NSNotification) {
	}
	

	func applicationWillTerminate(aNotification: NSNotification) {
		// Insert code here to tear down your application
	}
	
	func runProgramInTerminal(programName: String, fileToBeRun : String){
		let appleScriptSource : String = "set fileToBeRun to \"\" & quote & \"\(fileToBeRun)\" & quote & \"\"\n tell application \"Terminal\" \n activate \n do script \"\(programName) \" & fileToBeRun \n end tell";
		if let appleScriptRunner : NSAppleScript? = NSAppleScript.init(source:appleScriptSource){
			appleScriptRunner?.executeAndReturnError(nil);
		}
	}
	
	func openFileDialog (title: String, message: String) -> NSURL?
	{
		let openPanel: NSOpenPanel = NSOpenPanel()
		
		openPanel.prompt = "Open"
		openPanel.worksWhenModal = true
		openPanel.allowsMultipleSelection = false
		openPanel.canChooseDirectories = false
		openPanel.resolvesAliases = true
		openPanel.title = title
		openPanel.message = message
		if (openPanel.runModal() == NSOKButton){
			return openPanel.URL;
		}
		return nil;

	}
	
	@IBAction func openDocument(sender: AnyObject?){
		if let url =  self.openFileDialog("Open a \(self.defaultProgram.capitalizedString) file", message: "Ruby Launcher"){
			self.runProgramInTerminal(self.defaultProgram, fileToBeRun: url.path!);
		}
	}
	
	func application(theApplication: NSApplication, openFile filename: String) -> Bool{
		self.runProgramInTerminal(self.defaultProgram, fileToBeRun: filename);
		return true;
	}
}

