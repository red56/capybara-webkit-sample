require 'rails_helper'

RSpec.describe "things/new", type: :view do
  before(:each) do
    assign(:thing, Thing.new(
      :name => "MyString",
      :weight => 1.5,
      :volume => 1.5
    ))
  end

  it "renders new thing form" do
    render

    assert_select "form[action=?][method=?]", things_path, "post" do

      assert_select "input#thing_name[name=?]", "thing[name]"

      assert_select "input#thing_weight[name=?]", "thing[weight]"

      assert_select "input#thing_volume[name=?]", "thing[volume]"
    end
  end
end
