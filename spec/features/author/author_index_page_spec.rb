require 'rails_helper'

describe "Index Author Page", type: :feature do
    it "should show all Authors" do
      visit authors_url
      expect(page).to have_text 'Alan'
      expect(page).to have_text 'Turing'
      expect(page).to have_text 'https://en.wikipedia.org/wiki/Alan_Turing'
      expect(page).to have_link 'New', href: new_author_path
    end
end