require 'rails_helper'

describe "layout links"  do
    it "should have signup path" do
       visit '/'
       if user_signed_in?
            expect(page).to have_link('mini app', href: new_user_registration_path)
       else
           expect(page).to have_link('mini app', href: '/')
       end
    end
    
    
    
        
end