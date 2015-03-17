require 'rails_helper'

describe "the edit a section process" do

  it "gives error when no title is entered" do
    section = Section.create(:title => 'Home stuff')
    visit section_path(section)
    click_on 'Edit'
    fill_in 'Title', :with => ''
    click_on 'Update Section'
    expect(page).to have_content 'errors'
  end

  it "edits a section" do
    section = Section.create(:title => 'Knitting 101')
    visit section_path(section)
    click_on 'Edit'
    fill_in 'Title', :with => 'Knitting and Kama Sutra'
    click_on 'Update Section'
    expect(page).to have_content 'Knitting and Kama Sutra'
  end

end
