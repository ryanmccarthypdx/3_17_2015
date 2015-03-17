require 'rails_helper'

describe "the delete a section process" do
  it "deletes a section" do
    section = Section.create(:title => 'Home stuff')
    visit section_path(section)
    click_on 'Delete'
    expect(page).to have_no_content 'Home stuff'
  end
end
