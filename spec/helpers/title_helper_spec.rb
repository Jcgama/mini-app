require 'spec_helper'

describe ApplicationHelper do
    describe "should change the tilte" do
       visit '/'
       response.body.should =~ /<title>Mini-app<\/title>/
    end

end