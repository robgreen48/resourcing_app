require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Example User", email: "user@example.com", team: "Awesome", speciality: "Tech SEO", normal_hours: '100', admin: "false", line_manager: '10')
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:team) }
  it { should respond_to(:speciality) }
  it { should respond_to(:normal_hours) }
  it { should respond_to(:admin) }
  it { should respond_to(:line_manager) }

  it { should be_valid }

end