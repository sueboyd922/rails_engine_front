require 'rails_helper'

RSpec.describe 'merchants index page' do
  it 'has a list of all merchants', :vcr do
    # json_response = File.read("./spec/fixtures/all_merchants_test.json")
    # response = stub_request(:get, "https://localhost:3000/api/v1/merchants")
    # .to_return(status: 200, body: json_response, headers: {})
    #
    # json = JSON.parse(response.response.body, symbolize_names: true)

    visit '/merchants'

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
  end

  it 'links all the merchants to their show page', :vcr do

    visit '/merchants'

    click_on("Schroeder-Jerde")
    expect(current_path).to eq("/merchants/1")
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Aliquam")
    expect(page).to have_content("Item Provident At")
    expect(page).not_to have_content("Item Enim Error")
  end

  it 'can search for a merchant by name', :vcr do

    visit '/merchants'

    fill_in :search, with: "will"
    click_on "Search"
    expect(current_path).to eq("/merchants")

    expect(page).to have_content("Williamson Group")
    expect(page).to have_content("Willms and Sons")
    expect(page).not_to have_content("Bechtelar, Jones and Stokes")
  end
end
