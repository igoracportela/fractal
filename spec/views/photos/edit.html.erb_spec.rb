# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "photos/edit" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :description => "MyString",
      :image => "MyString",
      :slug => "MyString",
      :gallery => nil
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => photos_path(@photo), :method => "post" do
      assert_select "input#photo_description", :name => "photo[description]"
      assert_select "input#photo_image", :name => "photo[image]"
      assert_select "input#photo_slug", :name => "photo[slug]"
      assert_select "input#photo_gallery", :name => "photo[gallery]"
    end
  end
end
