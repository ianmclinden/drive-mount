# DriveMount
Quick AppleScript applet to automatically manage network drives

# Configuration
- Edit DriveList parameter in DriveMount script by Opening DriveMount.app with Script Editor
- _Alternatively_: Edit DriveList parameter in `DriveMount.app/Contents/Resources/Scripts/main.scpt`

# Usage
Note: DriveMount assumes permissions for network drives are saved to Keychain. If passwords for a drive are not found, an authentication window will be opened for every new remote server that DriveMount attempts to mount.

- Add DriveMount.app to `/Applications/`
- Add DriveMount.app to `System Preferences > Users & Groups > _Current User_ > Login Items` if you want DriveMount to run at startup.

# Author
Ian McLinden, 2016

# MIT License

Copyright (c) 2016 Ian McLinden

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
