require 'rails_helper'

describe "New paper page", type: :feature do
    it "should have text inputs for a paper including title, venue and year" do
        visit new_paper_path
        # these are the standard names given to inputs by the Rails form builder
        expect(page).to have_field('paper[title]')
        expect(page).to have_field('paper[venue]')
        expect(page).to have_field('paper[year]')
    end
end