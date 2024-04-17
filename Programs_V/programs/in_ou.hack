use namespace HH\Lib\IO;

<<__EntryPoint>>
function main(): void {
    $input = IO\request_input();
    IO\request_output($input);
}