<?php
class model_indikator
{

    public $bobot_aspek;
    public $bobot_domain=0;

    function tampilDataAspek($id_domain)
    {
        include "config/config.php";

        $sqlAspek = "SELECT * FROM tb_aspek a 
                    LEFT JOIN tb_domain b ON a.iddomain = b.iddomain 
                    WHERE a.iddomain = '$id_domain'
                    ORDER BY a.urutan_aspek ASC";
        $resultAspek = mysqli_query($conn, $sqlAspek);
        
        return $resultAspek;
    }

    function all($id_aspek)
    {
        include "config/config.php";
        
        $sql = "SELECT * FROM tb_indikator a 
                LEFT JOIN tb_aspek b ON a.idaspek = b.idaspek 
                LEFT JOIN tb_detail_indikator c ON a.idindikator = c.idindikator_detail
                WHERE b.idaspek = '$id_aspek'";
        $result = mysqli_query($conn, $sql);
        return $result;
    }
    
    function jumlahBobotIndikator($id_aspek)
    {
        include "config/config.php";

        $sqlBotAspek = "SELECT SUM(a.bobot_indikator) AS bobot_indi 
                    FROM tb_indikator a 
                    LEFT JOIN tb_aspek b ON a.idaspek = b.idaspek 
                    LEFT JOIN tb_detail_indikator c ON a.idindikator = c.idindikator_detail 
                    WHERE b.idaspek = '$id_aspek'";
        $resultBotAspek = mysqli_query($conn, $sqlBotAspek);
        $rowBotAspek = mysqli_fetch_assoc($resultBotAspek); 

        return $rowBotAspek['bobot_indi'];
    }

    function jumlahBobotDomain($id_domain)
    {
        include "config/config.php";

        $sqlBotAspek = "SELECT SUM(a.bobot_indikator) AS bobot_indi 
                        FROM tb_indikator a 
                        LEFT JOIN tb_aspek b ON a.idaspek = b.idaspek 
                        LEFT JOIN tb_detail_indikator c ON a.idindikator = c.idindikator_detail 
                        WHERE b.iddomain = '$id_domain'";
        $resultBotAspek = mysqli_query($conn, $sqlBotAspek);
        $rowBotAspek = mysqli_fetch_assoc($resultBotAspek);

        return $rowBotAspek['bobot_indi'];
    }

    function totalAdj($tahun, $id_aspek)
    {
        include "config/config.php";

        $total_ia = 0;
        $result = $this->all($id_aspek);
        while ($row = mysqli_fetch_assoc($result)) {

            $adj = 0;
            $indeks_akhir=0;
            $caritahun = $tahun;
            $sqlNilai = "SELECT * FROM tb_penilaian a 
                        LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
                        LEFT JOIN tb_level c ON c.idlevel = a.penilaianmandiri
                        WHERE a.idindikator = $row[idindikator] && a.tahun_penilaian  LIKE '%" . $caritahun . "%'";
            $resultNilai = mysqli_query($conn, $sqlNilai);
            if (mysqli_num_rows($resultNilai) > 0) {
                while ($rowNilai = mysqli_fetch_assoc($resultNilai)) {
                $adj = $rowNilai['nilaimadiri'];
                }
            } else {
                $adj = 0;
            }

            $indeks_akhir = $row['bobot_indikator']/($this->jumlahBobotIndikator($id_aspek))*$adj;

            $total_ia += $indeks_akhir+$indeks_akhir;
        }
        return $total_ia;

    }

    
}
