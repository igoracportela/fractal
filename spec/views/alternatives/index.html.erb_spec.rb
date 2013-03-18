# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "alternatives/index" do
  before(:each) do
    assign(:alternatives, [
      stub_model(Alternative,
        :title => "Title",
        :count_votes => 1,
        :poll => nil
      ),
      stub_model(Alternative,
        :title => "Title",
        :count_votes => 1,
        :poll => nil
      )
    ])
  end

  it "renders a list of alternatives" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
