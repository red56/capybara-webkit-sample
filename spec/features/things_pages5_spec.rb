require 'rails_helper'

RSpec.describe "Things" do
  describe "without js" do
    it "can create something" do
      visit things_path
      click_on "New"
      fill_in "Name", with: "Quiddity"
      click_on "Create"
      expect(page).to have_content("Quiddity")
    end
  end

  describe "with js", js: true do
    it "can create something (with js)" do
      visit things_path
      click_on "New"
      fill_in "Name", with: "Quiddity"
      click_on "Create"
      expect(page).to have_content("Quiddity")
    end
  end
end
