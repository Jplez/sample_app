require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

#Get Home
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
       get 'home'
       response.should have_selector("title",
                        :content => @base_title + " | Home")
    end
  end


#Get Contact
  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    
    it "should have the right title" do
       get 'contact'
       response.should have_selector("title",
                        :content => @base_title + " | Contact")
    end
  end
  
#Get About
  describe "GET 'about'" do
    it "should be successful" do
       get 'about'
       response.should be_success
     end
        
     it "should have the right title" do
        get 'about'
        response.should have_selector("title",
                         :content => @base_title + " | About")
     end
   end

#Get Help
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
  
  it "should have the right title" do
    get 'help'
    response.should have_selector("title",
                      :content => @base_title + " | Help")
    end
  end
end
