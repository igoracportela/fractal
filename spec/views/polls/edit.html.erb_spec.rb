# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "polls/edit" do
  before(:each) do
    @poll = assign(:poll, stub_model(Poll,
      :question => "MyString",
      :multiple_choice => false,
      :slug => "MyString"
    ))
  end

  it "renders the edit poll form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => polls_path(@poll), :method => "post" do
      assert_select "input#poll_question", :name => "poll[question]"
      assert_select "input#poll_multiple_choice", :name => "poll[multiple_choice]"
      assert_select "input#poll_slug", :name => "poll[slug]"
    end
  end
end
