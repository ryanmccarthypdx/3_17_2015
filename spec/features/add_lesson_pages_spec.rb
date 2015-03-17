require 'rails_helper'

  describe "the add a lesson process" do
    it "adds a new lesson" do
      section = Section.create(:title => 'Home stuff')
      visit section_path(section)
      click_on 'Add a lesson'
      fill_in 'Title', :with => 'Hi'
      fill_in 'Body', :with => 'Wash the dishes'
      click_on 'Create Lesson'
      expect(page).to have_content 'Hi'
    end

    it "gives error when no title is entered" do
      section = Section.create(:title => 'Home stuff')
      visit section_path(section)
      click_on 'Add a lesson'
      fill_in 'Body', :with => 'Wash the dishes'
      click_on 'Create Lesson'
      expect(page).to have_content 'errors'
    end

    it "gives error when no body is entered" do
      section = Section.create(:title => 'Home stuff')
      visit section_path(section)
      click_on 'Add a lesson'
      fill_in 'Title', :with => 'Hi'      
      click_on 'Create Lesson'
      expect(page).to have_content 'errors'
    end
  end
