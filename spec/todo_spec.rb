require('rspec')
require('todo')

describe(Todo) do

  describe('#description') do

    it("lets you provide and returns a description") do
      test_task = Task.new("write a program")
      expect(test_task.description()).to(eq("write a program"))
    end

  end

end
