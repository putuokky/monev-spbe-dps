<?php
class model_domain
{
    function all()
    {
        $sqlDomain = "SELECT * FROM tb_domain a 
                    LEFT JOIN tb_indeks b ON b.id_indeks = a.id_indeks 
                    WHERE b.nama_indeks = 'SPBE'
                    ORDER BY a.urutan_domain ASC";
        $resultDomain = mysqli_query($conn, $sqlDomain);
        return $resultDomain;
    }
}