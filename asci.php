<?php

// Function to convert hex to normal text (ASCII characters)
function hexToText($hex) {
    $text = '';
    // Loop through the hex string and convert each pair of hex digits to its ASCII character
    for ($i = 0; $i < strlen($hex); $i += 2) {
        $text .= chr(hexdec(substr($hex, $i, 2)));
    }
    return $text;
}

// Hex values to convert
$keyHex = "3839303337373437343731333631333435373638383033303535373534373037";
$ivHex = "52347467686a675e3432352840234767";

// Convert hex to text
$keyText = hexToText($keyHex);
$ivText = hexToText($ivHex);

echo "Key: " . $keyText . "\n";
echo "IV: " . $ivText . "\n";

?>
