<?php
    include('PDF Generator/fpdf/fpdf.php');
    
    $pdf = new FPDF();
    $pdf->SetMargins(40,50,20);
    $pdf->AddPage();
    $pdf->SetFont('Arial', 'B', 16);


    // Cell($width, $height=0, $text='', $border=0, $ln=0, $align='', $fil=false, $link='') GUIDELINE!
    // $pdf->SetXY(10, 180);
    // $pdf->Ln(20);
    $pdf->Cell(0, 0, "HI PO ATE", 1, 1, "L",false,"");
    $pdf->Output();
    
?>