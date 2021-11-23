require 'rails_helper'

describe "Edit author page", type: :feature do
    it "should show no errors" do
        visit edit_author_path
        # these are the standard names given to inputs by the Rails form builder
        expect(page).to not_have("error")
    end
end