describe "New Author page", type: :feature do
    it "should show authors credentials" do
      @alan = FactoryBot.create :author
      visit author_path(@alan)
      expect(page).to have_text("First name: Alan") 
      expect(page).to have_text("Last name: Turing")
      expect(page).to have_text("Homepage: https://en.wikipedia.org/wiki/Alan_Turing")
    end
end