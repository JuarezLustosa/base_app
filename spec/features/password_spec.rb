require "rails_helper"

RSpec.feature "Password" do
  let!(:user) { create(:user) }

  scenario "reset with a valid email" do
    visit 'users/password/new'

    fill_in 'user[email]', with: user.email
    click_button 'Resetar minha senha'
    expect(page).to have_content 'Dentro de minutos, você receberá um e-mail com instruções para a troca da sua senha.'
  end

  scenario "show an erro with invalid email" do
    visit 'users/password/new'

    fill_in 'user[email]', with: "invalid@email.com"
    click_button 'Resetar minha senha'
    expect(page).to have_content 'Email não encontrado'
  end

  scenario "show an erro with blank email" do
    visit 'users/password/new'

    click_button 'Resetar minha senha'
    expect(page).to have_content 'Email não pode ficar em branco'
  end
end
