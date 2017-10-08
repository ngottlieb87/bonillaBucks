require("spec_helper")
describe(Reward) do
  it{ should have_many(:students) }
end
