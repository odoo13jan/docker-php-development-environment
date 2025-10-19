<?php
require 'vendor/autoload.php';
use Endroid\QrCode\QrCode;
use Endroid\QrCode\Writer\PngWriter;

$qrCode = QrCode::create('https://example.com')->setSize(200);
$writer = new PngWriter();
$result = $writer->write($qrCode);
header('Content-Type: image/png');
echo $result->getString();