require 'rails_helper'

describe "Authors index view", type: :feature do
    it "should show all Authors" do
      visit authors_path
      expect(page).to have_text "Name"
      expect(page).to have_text "Homepage"
      expect(page).to have_link 'New', href: new_author_path
    end
    it "should have edit link" do
      @alan = FactoryBot.create :author
      visit authors_path
      expect(page).to have_link 'Edit', href: edit_author_path(@alan)
    end
    it "should have delete link" do
      @alan = FactoryBot.create :author
      visit authors_path
      expect(page).to have_text("Delete")
      @count = Author.count
      @alan.destroy
      expect(Author.count).to eq(@count - 1)
    end
end