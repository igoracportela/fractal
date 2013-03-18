# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "alternatives/new" do
  before(:each) do
    assign(:alternative, stub_model(Alternative,
      :title => "MyString",
      :count_votes => 1,
      :poll => nil
    ).as_new_record)
  end

  it "renders new alternative form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alternatives_path, :method => "post" do
      assert_select "input#alternative_title", :name => "alternative[title]"
      assert_select "input#alternative_count_votes", :name => "alternative[count_votes]"
      assert_select "input#alternative_poll", :name => "alternative[poll]"
    end
  end
end
