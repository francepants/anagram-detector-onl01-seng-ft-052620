# should detect no matches
# should detect a simple anagram
# should detect an anagram
# should detect multiple anagrams

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        #instances should respond to a match method that takes an array of possible anagrams. 
        #It should return all matches in an array. 
        #If no matches exist, it should return an empty array.

        #iterate over array of the words
        #compare those words to one in anagram
        array.select do |something|
            (@word.split("").sort) == (something.split("").sort)
        end
    end
end