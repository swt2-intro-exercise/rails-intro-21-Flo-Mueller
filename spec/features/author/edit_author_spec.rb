require 'rails_helper'

describe "Edit author page", type: :feature do
    it "should show no errors" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
        # these are the standard names given to inputs by the Rails form builder
    end
    it "should update the data" do
        @author = create(:author)
        visit edit_author_path(@author)
        fill_in "author[first_name]", with: "Albert"
        fill_in "author[last_name]", with: "Einstein"
        fill_in "author[homepage]", with: "https://de.wikipedia.org/wiki/Albert_Einstein"
        click_button "Update Author"
        @author.reload
        expect(@author.first_name).to eq("Albert")
        expect(@author.last_name).to eq("Einstein")
        expect(@author.homepage).to eq("https://de.wikipedia.org/wiki/Albert_Einstein")
    end
end