# frozen_string_literal: true

require 'rails_helper'

# Add frozen string comment here

RSpec.describe Category, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
end
