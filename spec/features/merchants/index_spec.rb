require 'rails_helper'

RSpec.describe 'merchants index page' do
  it 'has a list of all merchants' do
    visit '/merchants'

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
  end
end
