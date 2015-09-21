require 'rails_helper'

RSpec.describe "texts/index", type: :view do
  before(:each) do
    assign(:texts, [
      Text.create!(
        :body => "Body",
        :favorite => 1
      ),
      Text.create!(
        :body => "Body",
        :favorite => 1
      )
    ])
  end

  it "renders a list of texts" do
    render
    assert_select "tr>td", :text => "Body".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
