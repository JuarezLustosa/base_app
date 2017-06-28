require "rails_helper"

RSpec.feature "the signin process" do
  let!(:user) { create(:user) }

  scenario "Signing in with correct credentials" do
    visit 'users/sign_up'

    within("#new_user") do
      fill_in 'user[name]', with: "Jonh Does"
      fill_in 'user[email]', with: "akme@akeme.com"
      fill_in 'user[password]', with: "12345678"
      fill_in 'user[password_confirmation]', with: "12345678"
    end

    click_on 'Criar Usuário'
    expect(page).to have_content 'Parabéns seu cadastro foi realizado com sucesso. Seja Bem Vindo!'
  end

  scenario "Signing in as another user" do
    visit 'users/sign_up'

    within("#new_user") do
      fill_in 'user[name]', with: user.name
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      fill_in 'user[password_confirmation]', with: user.password
    end

    click_button 'Criar Usuário'
    expect(page).to have_content 'Email já está em uso'
  end
end
