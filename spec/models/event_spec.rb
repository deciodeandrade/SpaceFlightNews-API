require 'rails_helper'

RSpec.describe Event, type: :model do
  it { is_expected.to have_many(:article_events).dependent(:destroy) }
  it { is_expected.to have_many(:articles).through(:article_events) }
end
