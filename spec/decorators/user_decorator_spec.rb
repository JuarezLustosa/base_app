require 'rails_helper'

describe UserDecorator, :type => [:decorator, :helper] do
  let!(:user) { create(:user) }
  let!(:user_decorator) { user.decorate }

  subject { user_decorator }

  describe '#title' do
    it 'without title should return Usuário' do
      expect(subject.title("")).to eq("<h2>Perfis</h2>")
    end
  end
end
