class Task
  @@descriptions = []

  define_method(:initialize) do |description|
    @description = description
    @@descriptions.push(description)
  end

  define_singleton_method(:clear) do
    @@descriptions = []
  end

  define_singleton_method(:all) do
    @@descriptions
  end



  define_method(:description) do
    @description
  end




end
