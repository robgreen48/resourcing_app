require 'spec_helper'

describe Client do

  before do
    @client = Client.new(name: "Example Client", email: "client@propellernet.co.uk", team: "Awesome", account_director: '10')
  end

  subject { @client }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:team) }
  it { should respond_to(:account_director) }

  it { should be_valid }

end