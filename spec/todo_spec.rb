require('rspec')
require('todo')

describe(Task) do

  before() do
    Task.clear()
  end

  describe('#description') do
    it("lets you provide and returns a description") do
      test_task = Task.new("write a program")
      expect(test_task.description()).to(eq("write a program"))
    end
  end

describe('.clear') do
  it("clears list of descriptions") do
    expect(Task.clear()).to(eq([]))
  end
end

  describe('.all') do

    it("gives an empty list of descriptions") do
      expect(Task.all()).to(eq([]))
    end

    it("saves tasks") do
      task1 = Task.new("write a program")
      task2 = Task.new("drink coffee")
      task3 = Task.new("eat food")
      task1.save()
      task2.save()
      task3.save()
      expect(Task.all()).to(eq([task1, task2, task3]))
    end

  end








end
