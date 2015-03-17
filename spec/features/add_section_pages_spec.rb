require 'rails_helper'

describe "the add a section process" do
  it "adds a new section" do
    visit root_path
    click_on 'Add a new section'
    fill_in 'Title', :with => 'Home stuff'
    click_on 'Create Section'
    expect(page).to have_content 'Sections'
  end

  it "gives error when no name is entered" do
    visit root_path
    click_on 'Add a new section'
    click_on 'Create Section'
    expect(page).to have_content 'errors'
  end
end
