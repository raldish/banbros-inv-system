<?php
// Include FPDF and FPDI
require_once('PDF Generator/fpdf/fpdf.php');
require_once('vendor/autoload.php'); // For FPDI

use setasign\Fpdi\Fpdi;

// Create instance of FPDI
$pdf = new FPDI();

// Set the source PDF file (in this case, "namefile.pdf")
$pdf->setSourceFile('PDF Generator/Example-form.pdf');

// Import the first page of the PDF template
$templateId = $pdf->importPage(1);

// Add a new page using the template
$pdf->AddPage();

// Use the imported template page
$pdf->useTemplate($templateId);

// Now overlay dynamic content on top of the template
$pdf->SetFont('Arial', '', 12);
$pdf->SetXY(50, 100); // Set position on the page (x, y)
$pdf->Cell(100, 10, 'Student Name: John Doe');

$pdf->SetXY(90, 120); // Set position for another piece of data
$pdf->Cell(100, 10, 'Grade: A+');

// Output the new PDF
$pdf->Output(); // 'D' forces the file to be downloaded
?>
