require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'ResourcingApp'" do
      visit '/static_pages/home'
      expect(page).to have_content('ResourcingApp')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("ResourcingApp | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("ResourcingApp | Help")
    end
  end

  describe "About page" do

    it "should have the content 'Utilisation'" do
      visit '/static_pages/utilisation'
      expect(page).to have_content('Utilisation')
    end

    it "should have the title 'Utilisation'" do
      visit '/static_pages/utilisation'
      expect(page).to have_title("ResourcingApp | Utilisation")
    end
  end
end