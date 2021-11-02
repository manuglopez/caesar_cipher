
def cipher(message,shift)
  alphabet= Array("A".."Z")
  caps = Hash[alphabet.zip(alphabet.rotate(shift))]
  #puts caps

  alphabet=Array("a".."z")
  non_caps = Hash[alphabet.zip(alphabet.rotate(shift))]

  #puts non_caps

  encripter_table= caps.merge(non_caps)

  message.chars.map{ |c| encripter_table.fetch(c,c)}

end

p cipher("Hola Mundo",1).join