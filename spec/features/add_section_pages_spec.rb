require 'rails_helper'

describe "the add a section process" do
  it "adds a new section" do
    visit sections_path
    click_on 'Add section'
    fill_in 'Name', :with => 'Home stuff'
    click_on 'Create Section'
    expect(page).to have_content 'Sections'
  end

  it "gives error when no name is entered" do
    visit new_section_path
    click_on 'Create Section'
    expect(page).to have_content 'errors'
  end
end
