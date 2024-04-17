use namespace HH\Lib\{IO,C,Keyset};

<<__EntryPoint>>

function main(): void{

$items = keyset['a', 'b', 'c'];

// Checking if a keyset contains a value.
C\contains($items, 'a'); // true

// Adding/removing items. These operations set $items to a modified copy,
// and do not modify the original value.
$items[] = 'd'; // keyset['a', 'b', 'c', 'd']
$items[] = 'a'; // keyset['a', 'b', 'c', 'd']
unset($items['b']); // keyset['a', 'c', 'd']

// Getting the length.
$cnt = C\count($items); // 3
echo"\n$cnt"; 

// Iterating.
foreach ($items as $item) {
  echo $item;
}

// Equality checks. === returns false if the order does not match.
if(keyset[1] === keyset[1]){
    echo "\n 1 equals 1 True";
} // true
echo "\n----------";
keyset[1, 2] === keyset[2, 1]; // false

Keyset\equal(keyset[1, 2], keyset[2, 1]); // true

// Combining keysets.
$items2 = Keyset\union(keyset[1, 2], keyset[2, 3]); // keyset[1, 2, 3]
foreach ($items2 as $item){
    echo "\n$item";
}
    echo "\n -------------";
// Converting from an Iterable.
$items1 = keyset(vec[1, 2, 1]); // keyset[1, 2]
foreach ($items1 as $item){
    echo "\n$item";
}
    echo "\n -------------";
keyset(Vector { 20, 21 }); // keyset[20, 21]
keyset(dict['key1' => 'value1']); // keyset['value1']

// Type checks.
if($items is keyset<_>){
    echo "\nTrue";
} // true

}