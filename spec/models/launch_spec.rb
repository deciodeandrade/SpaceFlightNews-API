require 'rails_helper'

RSpec.describe Launch, type: :model do
  it { is_expected.to belong_to :article }
end
