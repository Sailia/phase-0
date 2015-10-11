# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if do |letter|
    letter.to_s.include? thing_to_delete
  end
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if do |k| k.include? thing_to_delete
  end
end

=begin
*Identify and describe the Ruby method(s) you
 implemented.

Used delete_if, as it works as .each but deletes too

*Teach your accountability group how to use the methods

used to_s to convert all objects into strings as .include? only works on integers.

*Share any tricks you used to find and decipher the Ruby Docs

Well I don't think this is a trick but something I should've learnt ages ago, where if you're dealing with hashes and you want to be able to use a method that gives instructions like .include? or .each etc, you want to be able to tell whether a method will work on a hash, array etc. Just go into hashes in Ruby Docs and you should look on the list on the left on how to implement it. Feel silly knowing about this after struggling for a week with it.

=end