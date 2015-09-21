require 'rails_helper'

RSpec.describe "texts/new", type: :view do
  before(:each) do
    assign(:text, Text.new(
      :body => "MyString",
      :favorite => 1
    ))
  end

  it "renders new text form" do
    render

    assert_select "form[action=?][method=?]", texts_path, "post" do

      assert_select "input#text_body[name=?]", "text[body]"

      assert_select "input#text_favorite[name=?]", "text[favorite]"
    end
  end
end
