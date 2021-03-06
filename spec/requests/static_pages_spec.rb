require 'spec_helper'

describe "Static pages" do
  subject { page }

  shared_examples_for "all static pages" do
   # it { should have_selector('h1', text: heading) }
  #  it { should have_title(full_title(page_title)) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
  end
  
  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
  end
  
  describe "About page" do
    before { visit root_path }
    let(:heading)    { 'About' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit root_path }
    let(:heading)    { 'Contact' }
    let(:page_title) { 'Contact Us' }

    it_should_behave_like "all static pages"
  end
end