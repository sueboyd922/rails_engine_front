require 'rails_helper'

RSpec.describe 'items index page' do
  it 'has a list of all the items', :vcr do
    visit "/items"

    expect(page).to have_link("Item Nemo Facere")
    expect(page).to have_link("Item Expedita Aliquam")
    expect(page).to have_link("Item Provident At")
  end

  it 'links to the items show page', :vcr do
    visit "/items"

    click_on("Item Nemo Facere")
    expect(current_path).to eq("/items/4")
  end
end
