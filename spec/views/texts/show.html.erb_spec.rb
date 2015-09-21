require 'rails_helper'

RSpec.describe "texts/show", type: :view do
  before(:each) do
    @text = assign(:text, Text.create!(
      :body => "Body",
      :favorite => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body/)
    expect(rendered).to match(/1/)
  end
end
