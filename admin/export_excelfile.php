<?php

    $host ="localhost";
    $user ="root";
    $password ="";

    try{
        $conn = new PDO("mysql:host=$host;dbname=crud_db", $user, $password);
    } catch (\Throwable $th) {
        echo "<br>" .$th->getMessage();
    }

    if(isset($_GET['export'])){
        $output = "";
        $output .="
            <table border='1';'>
            <tr>
                <th>Company Code</th>
                <th>Employee #</th>
                <th>First Name</th>
                <th>Middle Name</th>
                <th>Surname</th>
                <th>Location</th>
                <th>Model Description</th>
                <th>Serial Number</th>
                <th>Quantity</th>
                <th>Status</th>
                <th>Added at</th>
            </tr>
        ";

        $sql =" SELECT * FROM client";
        $stmt=$conn->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

        foreach($data as $key=>$value){
            $output .='
                <tr>
                    <td>'.$value['company_code'].'</td>
                    <td>'.$value['assigned_to'].'</td>
                    <td>'.$value['firstname'].'</td>
                    <td>'.$value['middlename'].'</td>
                    <td>'.$value['surname'].'</td>
                    <td>'.$value['location_n'].'</td>
                    <td>'.$value['model_description'].'</td>
                    <td>'.$value['serial_number'].'</td>
                    <td>'.$value['quantity'].'</td>
                    <td>'.$value['con_dition'].'</td>
                    <td>'.$value['added_at'].'</td>
                </tr>
            ';
    }

    $output .='</table>';
    $filename = "exported_record-".date('Y-m-d').".xls";
    header("Content-Type: application/vnd.ms-excel");
    header("Content-Disposition: attachment; filename=$filename");

    echo $output;
}

?>