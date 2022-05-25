require 'rails_helper'

RSpec.describe 'merchants index page' do
  it 'has a list of all merchants' do
    visit '/merchants'

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
  end

  it 'links all the merchants to their show page' do
    visit '/merchants'

    click_on("Schroeder-Jerde")
    expect(current_path).to eq("/merchants/1")
    expect(page).to have_content("items")
  end
end
