// use namespace HH\Lib\_Private\_IO;
use namespace HH\Lib\IO;
<<__EntryPoint>>
async function main_async(): Awaitable<void> {
    // Read user input from stdin
    echo "Enter your name: \n";
    $nameStr = IO\request_input(); //no input taken

    echo ".$nameStr";
}
