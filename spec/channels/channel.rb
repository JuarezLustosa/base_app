require "rails_helper"
RSpec.describe "ApplicationCable" do
  it "channel" do
    expect(ApplicationCable::Channel).to respond_to('new')
  end
end
