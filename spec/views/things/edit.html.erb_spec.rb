require 'rails_helper'

RSpec.describe "things/edit", type: :view do
  before(:each) do
    @thing = assign(:thing, Thing.create!(
      :name => "MyString",
      :weight => 1.5,
      :volume => 1.5
    ))
  end

  it "renders the edit thing form" do
    render

    assert_select "form[action=?][method=?]", thing_path(@thing), "post" do

      assert_select "input#thing_name[name=?]", "thing[name]"

      assert_select "input#thing_weight[name=?]", "thing[weight]"

      assert_select "input#thing_volume[name=?]", "thing[volume]"
    end
  end
end
