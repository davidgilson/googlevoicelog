Google Voice Log
================

*[David Gilson](http://www.davidgilson.co.uk) 17th October 2014*

Bash Script to create CSV file from the HTML files from Google's Takeout service for Google Voice call logs.

Instructions
------------

If you are fortunate enough to be using [Google Voice](https://www.google.com/voice), you may need more usable access to your call logs than its history page. You are able to download all of your Google Voice history via Google's [Takeout](https://www.google.com/settings/takeout) service.

Once you have requested your Google Voice data from Takeout, it may take a while for all the data to be collected. Once it has, you can download a zip file, which has the following structure:

    /Calls
    	*.html
    	*.mp3
    /Greetings
    	My Greetings*.mp3
    Bills.html
    Phones.vcf
    
    
It's the HTML files that are in the Calls directory which this script operates on. All you need to do is run the script. When it has completed is it will generate a `call-log.csv` file in the same directory, which can be imported into any spreadsheet software for further use (e.g. billing for reception duties, etc.)

The CSV file will have the following column headings:

    Date
    Time
    Phone Number
    Type of call (Received, Placed, Missed, Voicemail)
    Duration of call



