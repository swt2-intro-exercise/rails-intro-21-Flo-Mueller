describe "Index Author Page", type: :feature do
    it "should show all Authors" do
      visit authors_url
      expect(page).to have_table 'Authors'
      expect('Authors').to have_header 'Name'
      expect('Authors').to have_header 'Homepage'
      expect(page).to have_link 'New', href: new_author_path
    end
end