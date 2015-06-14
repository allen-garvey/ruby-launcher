#Ruby Launcher

Ruby Launcher is a simple, native Mac GUI program written in Swift that allows you to quickly execute your Ruby files without requiring you to type in `ruby "programName"` in the terminal or fiddle with permissions for each file. Ruby Launcher is based on the Python Launcher for Python (no affiliation).

##Installing

1. Download the Ruby Launcher project files.

2. Compile the project opening it in Xcode (free download from the Appstore required) and going to Product->Archive->Export.

##How To Use

There are two ways that Ruby Launcher can be used to execute Ruby (.rb) files.

1. Start Ruby Launcher and then go to File->Open and select your Ruby files from the dialog box.
2. Right click on a Ruby file and select Open With->Ruby Launcher (you may have to find it under Other...).

##Trouble Shooting

Ruby Launcher works the same as typing `ruby "full path of program name"` in your terminal. If your Ruby location is different or your $PATH variable has been corrupted, Ruby Launcher might not work.

##Technical Specifications
- Written in Swift and AppleScript
- Tested on Mac OSX 10.10 (Yosemite)
- Should also work on Mac OSX 10.09 (Mavericks), but this is untested
- Will not work on earlier Mac versions, because Swift is not supported
- Dependencies - requires Ruby to be already installed and set up in the user's $PATH variable (this is the default on a Mac) and Xcode to compile the project

##License
The MIT License (MIT) Copyright (c) 2015 Allen Garvey

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.