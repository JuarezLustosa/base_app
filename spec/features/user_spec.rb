require "rails_helper"

RSpec.feature "Account" do
  let!(:user) { create(:user) }

  background do
    login_as(user, :scope => :user)
    visit 'users/edit'
  end

  scenario "edit" do
    fill_in 'user[current_password]', with: user.password
    click_on 'Atualizar Usuário'
    
    expect(page).to have_content 'Sua conta foi atualizada com sucesso.'
  end

  scenario "change a password" do

    within("#edit_user") do
      fill_in 'user[name]', with: "Ayra"
      fill_in 'user[email]', with: "arya@email.com"
      fill_in 'user[password]', with: "12345670"
      fill_in 'user[password_confirmation]', with: "12345670"
      fill_in 'user[current_password]', with: user.password
    end

    click_button 'Atualizar Usuário'

    expect(page).to have_content 'Sua conta foi atualizada com sucesso.'
  end

  scenario "cancel", :js => true do
    click_on 'Cancelar minha conta'

    expect(page).to have_content 'Cadastrar'
  end
end
