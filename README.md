Site-Monitor
============

A simple rails application that monitors the response times of websites. Useful when testing the load times of other
rails websites and applications. 


How to use: # TODO: Update this with better info
-----------

Get your deployment server up and running (this app is ready for production from the get go). 

Make sure you have a copy of MySQL2 installed, and fire up apache/passenger. Get your Ruby 2.0.0 & Rails 4 installed.

Create your Database tables by running rake db:create, rake db:migrate, and bundle install in your project folder.

Once up and running create an account (this is just stored in the database).

Once signed up and signed in, add a new site by clicking the 'new site' button in the left hand corner.

Enter the details of the website you want to add, the response interval should be formatted like this: '1m' for 1 minute, '1h' for 1 hour, '1d' for 1 day, and so on. Also make sure monitoring is checked so that the website is being monitored straight away.

For this to work you will need to set up a cronjob or crontab that will run a script in the lib folder every minute or so. The path for this is: 'lib/ping_script.rb'

Support:
--------
If you need help in anyway please don't hesitate to contact me on: tom.chinery@paymentcardsolutions.co.uk 

License:
--------

Copyright (c) 2013 Thomas Chinery.

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
