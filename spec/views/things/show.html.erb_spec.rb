require 'rails_helper'

RSpec.describe "things/show", type: :view do
  before(:each) do
    @thing = assign(:thing, Thing.create!(
      :name => "Name",
      :weight => 2.5,
      :volume => 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
  end
end
