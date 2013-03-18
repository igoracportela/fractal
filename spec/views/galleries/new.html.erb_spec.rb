# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "galleries/new" do
  before(:each) do
    assign(:gallery, stub_model(Gallery,
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString"
    ).as_new_record)
  end

  it "renders new gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => galleries_path, :method => "post" do
      assert_select "input#gallery_title", :name => "gallery[title]"
      assert_select "textarea#gallery_description", :name => "gallery[description]"
      assert_select "input#gallery_slug", :name => "gallery[slug]"
    end
  end
end
