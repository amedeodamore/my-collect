
def my_collect(array)
    i = 0
    collection = []
    while i < array.length
      collection << yield(array[i])
     i += 1
    end

    array.collect do |language|
        "#{language.upcase}"
    end
      array.collect do |names|
        "#{names.split(" ").first}"
    end
    return collection
  end 

 # it "returns a new collection of appropriately modified elements, in this case capitalized languages" do
 #   expect(my_collect(languages) do |language|
 #     language.upcase
 #   end).to eq(["RUBY", "JAVASCRIPT", "PYTHON", "OBJECTIVE-C"])
 # end