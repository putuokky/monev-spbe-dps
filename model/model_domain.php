<?php

class model_domain
{
    function all()
    {
        include "config/config.php";

        $sqlDomain = "SELECT * FROM tb_domain a 
                    LEFT JOIN tb_indeks b ON b.id_indeks = a.indeks 
                    WHERE b.nama_indeks = 'SPBE'
                    ORDER BY a.urutan_domain ASC";aaaa
        $resultDomain = mysqli_query($conn, $sqlDomain);
        return $resultDomain;
    }
}
