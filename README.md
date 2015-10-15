[![Build status](https://ci.appveyor.com/api/projects/status/4iefj7d7x565aius?svg=true)](https://ci.appveyor.com/project/1RedOne/appveyortest)

### What is this? 
This is a super simple project made to help us understand how Appveyor works.

You can duplicate this for your own tests, if you simply want the most basic possible working appveyor build.

### you'll find...
* a simple Verb-Noun.ps1.  
   This is just a wrapper around test-path, made to be as simple as is possible to get you started.  Take your real code and put it here.
* a simple Verb-Noun.tests.ps1
   About as basic as a Pester test can be.  Once you understand what is happening here, simply adapt the tests to fit your code and save.  Try to run it a few times with Invoke-Pester to be sure that it works!  
   
   
   
### How to use
  * go to AppVeyor.com and sign up, allow it to access your GitHub account
  * Fork this and make it your own, edit the scripts and the tests to be your own functional code.  
  * Be sure to run Invoke-Pester a few times on your local PC first.  if it fails there, it will definitely fail on Appveyor
  * go to Appveyor and select this as an active project
  * Click 'Latest Build' or 'Rebuild Newest Commit' to see Appveyor running your tests in real time!
  * In your Appveyor project settings, go to badges and copy-pase the markdown there.  Replace the stuff at the top of this readme.

### What will it look like?
* ![seriously, how cool is this](/img/appveyor.gif)
