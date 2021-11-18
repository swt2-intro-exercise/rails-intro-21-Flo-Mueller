require 'rails_helper'

  describe "New author page", type: :feature do
    it "should have text inputs for an author's first name, last name, and homepage" do
      visit new_author_path
      # these are the standard names given to inputs by the Rails form builder
      expect(page).to have_field('author[first_name]')
      expect(page).to have_field('author[last_name]')
      expect(page).to have_field('author[homepage]')
    end
    it "should not be valid if last_name is nil" do
      visit new_author_path
      @alan = Author.new(first_name: "Alan", last_name: nil, homepage: "http://example.com")
      expect(@alan).to_not be_valid
    end
    it "should show errors if name is nil" do
      visit new_author_path
      fill_in "author[first_name]", with: "Alan"
      click_button "Save Author"
      expect(page).to have_text("error")
    end
  end
