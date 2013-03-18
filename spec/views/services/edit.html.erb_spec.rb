# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "services/edit" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :title => "MyString",
      :descritpion => "MyText",
      :detailed_description => "MyText",
      :image => "",
      :slug => "MyString"
    ))
  end

  it "renders the edit service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => services_path(@service), :method => "post" do
      assert_select "input#service_title", :name => "service[title]"
      assert_select "textarea#service_descritpion", :name => "service[descritpion]"
      assert_select "textarea#service_detailed_description", :name => "service[detailed_description]"
      assert_select "input#service_image", :name => "service[image]"
      assert_select "input#service_slug", :name => "service[slug]"
    end
  end
end
