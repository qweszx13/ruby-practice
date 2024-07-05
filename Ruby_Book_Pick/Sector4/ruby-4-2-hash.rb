h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }
h.length # => 3
h['dog'] # => "canine"
h['cow'] = 'bovine'
h[12] = 'dodecine'
h['car'] = 99
p h

test = {sym: 'hello', keis: 'hi'}

test2 = { 12 => "number hash", 1.1 => "double hash" }

test[3] = 3
p test
p test[3]
