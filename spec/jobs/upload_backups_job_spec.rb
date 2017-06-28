require "rails_helper"
RSpec.describe "ActiveJob" do
  it "just for call class" do
    expect(ApplicationJob).to respond_to("new")
  end
end
