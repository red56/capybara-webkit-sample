require 'rails_helper'

RSpec.describe "things/index", type: :view do
  before(:each) do
    assign(:things, [
      Thing.create!(
        :name => "Name",
        :weight => 2.5,
        :volume => 3.5
      ),
      Thing.create!(
        :name => "Name",
        :weight => 2.5,
        :volume => 3.5
      )
    ])
  end

  it "renders a list of things" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
  end
end
