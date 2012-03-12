require 'spec_helper'

describe User do

  it { should respond_to(:admin) }

  it { should_not be_admin }

end