require 'rails_helper'

describe "layout links"  do
    it "should have signup path" do
       visit root_path
       expect(page).to have_link(nil, href: 'new_user_registration_path')
    end
    
    it "should have home path" do
       visit root_path
       expect(page).to have_link(nil, href: 'root_path')
    end
        
end