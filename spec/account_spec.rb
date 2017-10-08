require("spec_helper")

describe(Account) do
  it { should belong_to(:student) }
  it { should belong_to(:reward) }
  it { should belong_to(:fine) }
end
