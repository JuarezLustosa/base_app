require "rails_helper"
RSpec.describe "ApplicationCable" do
  it "connections" do
    expect(ApplicationCable::Connection).to respond_to('new')
  end
end
