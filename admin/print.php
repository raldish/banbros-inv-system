<?php

$id = $_GET['print'];

include("connection.php");

$sql = "SELECT * FROM client WHERE id = '$id'";
$result = $conn->query($sql);

$data = $result->fetch_assoc();

$conn->close();

require_once('../PDF Generator/fpdf/fpdf.php');
require_once('../vendor/autoload.php'); // For FPDI

use setasign\Fpdi\Fpdi;

$pdf = new FPDI();
$pdf->setSourceFile('../PDF Generator/PROPERTY ACCOUNTABILITY RECEIPT AND TURNOVER FORM.pdf');
$templateId = $pdf->importPage(1);
$pdf->AddPage();
$pdf->useTemplate($templateId);

// Retrieve data from the client table
$company_code = $data['company_code'];
$assigned_to = $data['assigned_to'];
$firstname = $data['firstname'];
$middlename = $data['middlename'];
$surname = $data['surname'];
$location_n = $data['location_n'];
$model_description = $data['model_description'];
$serial_number = $data['serial_number'];
$quantity = $data['quantity'];
$con_dition = $data['con_dition'];

// // Set positions and display data on the PDF
// $spaced_company_code = implode('  ', str_split($company_code));
// $pdf->SetFont('Arial', '', 10); // set font size to 10
// $pdf->SetXY(30, 100); // Set position on the page (x, y)
// $pdf->Cell(10, -123, '' . $spaced_company_code);

$spaced_assigned_to = implode('   ', str_split($assigned_to));
$pdf->SetFont('Arial', '', 10); // set font size to 8
$pdf->SetXY(32, 100); // Set position for another piece of data
$pdf->Cell(10, -123, '' . $spaced_assigned_to);

$pdf->SetFont('Arial', '', 12); // set font size to 8
$pdf->SetXY(122, 100); // Set position for another piece of data
$pdf->Cell(100, -137, '' . $firstname);

$pdf->SetFont('Arial', '', 12); // set font size to 8
$pdf->SetXY(187, 26); // Set position for another piece of data
$pdf->Cell(20, 10, '' . $middlename);

$pdf->SetFont('Arial', '', 12); // set font size to 8
$pdf->SetXY(64, 100); // Set position for another piece of data
$pdf->Cell(100, -137, '' . $surname);

// $pdf->SetXY(90, 160); // Set position for another piece of data
// $pdf->Cell(100, 10, '' . $location_n);

$pdf->SetFont('Arial', '', 8); // set font size to 8
$pdf->SetXY(13, 67); // Set position for another piece of data
$pdf->Cell(100, 10, '' . $model_description . ' /');
$pdf->SetXY(53, 67); // Set position for another piece of data   
$pdf->Cell(100, 10, '' . $con_dition);

$pdf->SetFont('Arial', '', 8); // set font size to 8
$pdf->SetXY(118, 67); // Set position for another piece of data
$pdf->Cell(100, 10, '' . $serial_number);

$pdf->SetFont('Arial', '', 12); // set font size to 8
$pdf->SetXY(75, 67); // Set position for another piece of data
$pdf->Cell(100, 10, '' . $quantity);

$pdf->SetFont('Arial', '', 8); // set font size to 8
$pdf->SetXY(187, 67); // Set position for another piece of data   
$pdf->Cell(100, 10, '' . $con_dition);

$pdf->SetFont('Arial', '', 12); // set font size to 8
$pdf->SetXY(165, 67); // Set position for another piece of data
$pdf->Cell(100, 10, '' . $quantity);

$pdf->SetFont('Arial', '', 9); // set font size to 8
$pdf->SetXY(134, 192); // Set position for another piece of data
$pdf->Cell(100, 10, 'Joseph Espiritu');

$pdf->Output(); // 'D' forces the file to be downloaded