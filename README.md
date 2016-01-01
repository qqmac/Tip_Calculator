# Pre-Work: Tip_Calculator

Tip Calculator is a tip calculator application for iOS.

Submitted by: Quyen Mac

Time Spent: 11 hours total

## User Stories

The following **required** functionality is complete:
	* User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
	* Settings page to change the default tip percentage

The following **additional** features are implemented:
	* Added colors

## Video Walkthrough

Here’s a walkthrough of my code:
<img src=‘i.imgur.com/g9BPG8A.gif' title=‘Video Walkthrough’ width=‘’ alt=‘Video Walkthrough’ />

i.imgur.com/g9BPG8A.gif

Here’s the debugging process with errors and bugs noted in the Notes below:
<img src=‘i.imgur.com/B9zAnmo.gif' title=‘Debug’ width=‘’ alt=‘Debug’ />

i.imgur.com/B9zAnmo.gif

GIF created with [LiceCap](http://www.cockos.com/licecap/)

## Notes

I started this project with very little knowledge with UIs. I have briefly done QT, which I found was a bit similar to how Xcode worked. Like QT, swift had slots and signals but it is called outlets. It took me about 2 hours to understand how to work the UI interface. Then I followed the tutorial and finished the basic tip calculator. This overall took me about 5 hours total. I then moved on to creating the settings page, it took me a bit of time to understand NSUserDefaults. I ended up passing two different data types: a boolean and a double integer. I initially tried to create a fourth button, and this button was to be the custom tip value. The problem I came into this was that I could not find a way to edit the label for the fourth button as the user entered a value. I decided to add a tip percentage value on the main screen and the displayed value was the integer value that is passed between the controller and the setting. When the user moves onto the setting, the passed value for the tip is already displayed in the text field. If the default value is set to 20, then the setting value is also set to 20. The user would have to change the number. The tip value would change every time the user changes the setting value or if the user chooses one of the tip segments.

This program was written and tested on Xcode 6.4. and Yosemite 10.10 through VirtualBox on Windows 8.1. My Macbook had broken down and I had to do this project via VirtualBox. I could not run the latest Xcode because I was running on a lower version of Yosemite. I will be getting a new Macbook soon. I did run into some bugs while I was debugging. For a while, the keyboard would appear whenever the text field was clicked, but it disappeared later on. I had to do my testing by typing from my physical keyboard. I was able to make the keyboard appear by going into Hardware > Keyboard > Connect Hardware Keyboard and unchecking it. Although, I was not able to type on my physical keyboard as a result.

This program is not perfect. I was not able to change back into the default tip values after the user had customized the tip value from the settings. My problem was that there was no option for Tap Gesture Recognizer for the segments. With my logic, there is a boolean that is passed and it is initially false from the start up. If it’s false, then the tip value from the segment would update into NSUserDefaults. The boolean would be true if the user edits the value from the setting, thus the default tip values would not effect the changed value. It would return to false once the segment is tapped. I was not able to find a way to check if the segment was tapped.

## License
	Copyright 2015 Quyen Mac

	Licensed under the Apache License, Version 2.0 (the “License”);
	you may not use this file except in compliance with the License.
	you may obtain a copy of the License at

		http://www.apache.org/licenses/LINCENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an “AS IS” BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
