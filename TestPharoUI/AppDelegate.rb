#
#  AppDelegate.rb
#  TestPharoUI
#
#  Created by Sean DeNigris on 12/20/11.
#  Copyright 2011 __MyCompanyName__. All rights reserved.
#

require 'net/http'

class AppDelegate
    attr_accessor :window
    attr_writer :time_field
    def applicationDidFinishLaunching(a_notification)
        # Insert code here to initialize your application
    end
    def windowWillClose(sender); exit; end
    def showTime(sender)
        response = Net::HTTP.start("127.0.0.1", 1701) { |http| http.get('/') }
        @time_field.stringValue = response.body
    end
end

