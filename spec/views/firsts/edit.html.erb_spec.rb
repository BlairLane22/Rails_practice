require 'rails_helper'

RSpec.describe "firsts/edit", type: :view do
  before(:each) do
    @first = assign(:first, First.create!(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit first form" do
    render

    assert_select "form[action=?][method=?]", first_path(@first), "post" do

      assert_select "input#first_first_name[name=?]", "first[first_name]"

      assert_select "input#first_last_name[name=?]", "first[last_name]"
    end
  end
end
