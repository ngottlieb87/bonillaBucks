require("spec_helper")

describe(Student) do
  it{ should have_many(:fines) }
  it{ should have_many(:rewards) }

  it ("validates username presence and length") do
    test_user1 = Student.new({:username => ""})
    test_user2 = Student.new({:username => "heylookatthatpigitssuperbiganduglyandsmellslikeshitandstuffohmygodtheyrecominginhelp"})
    expect(test_user1.save).to eq(false)
    expect(test_user2.save).to eq(false)
  end

end
