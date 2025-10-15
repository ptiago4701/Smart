<?php

// Replace these with your actual AES key and IV (must be 32 bytes for key and 16 bytes for IV)
define('AES_KEY', hex2bin('3839303337373437343731333631333435373638383033303535373534373037')); // 32-byte key
define('AES_IV', hex2bin('52347467686a675e3432352840234767')); // 16-byte IV

// Function to convert hex to binary
function hex2bin($hex) {
    return pack('H*', $hex);
}

// Function to decrypt data
function decryptData($encryptedData) {
    // Decode the encrypted data from base64
    $decodedData = base64_decode($encryptedData);
    if ($decodedData === false) {
        return "Base64 decoding failed.";
    }

    // Decrypt using AES-256-CBC
    $decryptedData = openssl_decrypt($decodedData, 'AES-256-CBC', AES_KEY, 0, AES_IV);
    if ($decryptedData === false) {
        return "Decryption failed.";
    }

    return json_decode($decryptedData, true);
}

// Load encrypted content from file
$encryptedContent = file_get_contents("response_body.json");
if ($encryptedContent === false) {
    die("Error: Could not read the encrypted file.");
}

// Decrypt the content
$decryptedContent = decryptData($encryptedContent);

// Check if decryption was successful and display content in pretty JSON format
if ($decryptedContent) {
    header('Content-Type: application/json');
    echo json_encode($decryptedContent, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
} else {
    echo "Decryption failed. Please check the AES key, IV, and encrypted content format.";
}

// Optionally log encrypted data
file_put_contents("php_encrypted_data.log", $encryptedContent);

?>
