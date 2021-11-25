require 'rails_helper'

describe "New paper page", type: :feature do
    it "should have text inputs for a paper including title, venue and year" do
        visit new_paper_path
        # these are the standard names given to inputs by the Rails form builder
        expect(page).to have_field('paper[title]')
        expect(page).to have_field('paper[venue]')
        expect(page).to have_field('paper[year]')
    end
    it "should not be valid if any value is nil" do
        visit new_paper_path
        @papier = Paper.new(title: "Party", venue: nil, year: 1984)
        expect(@papier).to_not be_valid
        @papier2 = Paper.new(title: nil, venue: "Mercedes-Benz Arena", year: 1984)
        expect(@papier2).to_not be_valid
        @papier2 = Paper.new(title: "Party", venue: "Mercedes-Benz Arena", year: 'abd')
        expect(@papier2).to_not be_valid
    end
end