<<__EntryPoint>>
function main() : void{
for ($i = 1; $i <= 10; ++$i) {
  if (($i % 2) === 0) {
    continue;
  }
  echo "$i is odd\n";

  while ($i<=15) {
  // ...
  if ($i == 15) {
    echo "\nReached 15\n";
    break;  // break out of the while loop
  }
  $i++;
  // ...
}
}
}
