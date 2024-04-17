use namespace HH\Lib\{Vec,Dict,C,Keyset};
<<__EntryPoint>>
function main():void{
$items = dict['a' => 1, 'b' => 3];

// Accessing items by key.
$items['a']; // 1
// $items['foo']; // throws OutOfBoundsException

// Accessing keys that may be absent.
$val = idx($items, 'a'); // 1
echo "$val \n ----- \n";
$val = idx($items, 'z'); // null
echo "$val \n ----- \n";
$val = idx($items, 'z', 'default'); // 'default'
echo "$val \n ----- \n";


// Inserting, updating or removing values in a dict. These operations
// set $items to a modified copy, and do not modify the original value.
$items['a'] = 42; // dict['a' => 42, 'b' => 3]
$items['z'] = 100; // dict['a' => 42, 'b' => 3, 'z' => 100]
unset($items['b']); // dict['a' => 42, 'z' => 100]

echo"\n------\n";

// Getting the keys.
Vec\keys(dict['a' => 1, 'b' => 3]); // vec['a', 'b']


// Getting the values.
$values = vec(dict['a' => 1, 'b' => 3]); // vec[1, 3]


// Getting the length.
$cnt = C\count($items); // 2
echo "\n---\ncnt\n";

// Checking if a dict contains a key or value.
C\contains_key($items, 'a'); // true
C\contains($items, 3); // true

// Iterating values.
foreach ($items as $value) {
  echo $value; // e.g. 1
}
// Iterating keys and values.
foreach ($items as $key => $value) {
  echo $key;   // e.g. 'a'
  echo $value; // e.g. 1
}

// Equality checks. === returns false if the order does not match.
dict[] === dict[]; // true
dict[0 => 10, 1 => 11] === dict[1 => 11, 0 => 10]; // false
Dict\equal(dict[0 => 10, 1 => 11], dict[1 => 11, 0 => 10]); // true

// Combining dicts (last item wins).
Dict\merge(dict[10 => 1, 20 => 2], dict[30 => 3, 10 => 0]);
// dict[10 => 0, 20 => 2, 30 => 3];

// Converting from an Iterable.
dict(vec['a', 'b']); // dict[0 => 'a', 1 => 'b']
dict(Map {'a' => 5}); // dict['a' => 5]

// Type checks.
if($items is dict<_ , _>)
{
    echo "\n true\n";
} 
}