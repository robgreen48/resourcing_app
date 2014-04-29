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

  describe "Recovery page" do

    it "should have the content 'Recovery'" do
      visit '/static_pages/recovery'
      expect(page).to have_content('Recovery')
    end

    it "should have the title 'Recovery'" do
      visit '/static_pages/recovery'
      expect(page).to have_title("ResourcingApp | Recovery")
    end
  end

  describe "Utilisation page" do

    it "should have the content 'Utilisation'" do
      visit '/static_pages/utilisation'
      expect(page).to have_content('Utilisation')
    end

    it "should have the title 'Utilisation'" do
      visit '/static_pages/utilisation'
      expect(page).to have_title("ResourcingApp | Utilisation")
    end
  end

  describe "Pacing page" do

    it "should have the content 'Pacing'" do
      visit '/static_pages/pacing'
      expect(page).to have_content('Pacing')
    end

    it "should have the title 'Pacing'" do
      visit '/static_pages/pacing'
      expect(page).to have_title("ResourcingApp | Pacing")
    end
  end

end