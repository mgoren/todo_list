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

  describe('.all') do
    it("gives an empty list of descriptions") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it("clears list of descriptions") do
      expect(Task.clear()).to(eq([]))
    end
  end








end
