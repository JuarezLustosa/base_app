require "rails_helper"

RSpec.feature "the loging process" do
  let!(:user) { create(:user) }

  scenario "with a registred user" do
    visit 'users/sign_in'

    within("#new_user") do
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
    end

    click_button 'Logar'
    expect(page).to have_content 'Bem Vindo ao nosso Sistema!!'
  end

  scenario "with a unregistred user" do
    visit 'users/sign_in'

    within("#new_user") do
      fill_in 'user[email]', with: "unregistred@unregistred.com"
      fill_in 'user[password]', with: "12345678"
    end

    click_button 'Logar'
    expect(page).to have_content 'E-mail ou senha inválidos.'
  end
end
