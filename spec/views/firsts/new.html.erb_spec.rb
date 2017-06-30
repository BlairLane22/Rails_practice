require 'rails_helper'

RSpec.describe "firsts/new", type: :view do
  before(:each) do
    assign(:first, First.new(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders new first form" do
    render

    assert_select "form[action=?][method=?]", firsts_path, "post" do

      assert_select "input#first_first_name[name=?]", "first[first_name]"

      assert_select "input#first_last_name[name=?]", "first[last_name]"
    end
  end
end
