# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "subscribers/edit" do
  before(:each) do
    @subscriber = assign(:subscriber, stub_model(Subscriber,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders the edit subscriber form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => subscribers_path(@subscriber), :method => "post" do
      assert_select "input#subscriber_name", :name => "subscriber[name]"
      assert_select "input#subscriber_email", :name => "subscriber[email]"
      assert_select "input#subscriber_phone", :name => "subscriber[phone]"
      assert_select "input#subscriber_slug", :name => "subscriber[slug]"
    end
  end
end
