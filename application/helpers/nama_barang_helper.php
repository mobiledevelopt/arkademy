<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('detail')) {

    function detail($nama_barang,$size,$jenis,$merk,$panjang_brg,$lebar_brg,$tinggi_brg,$sat_panjang,$volume,$sat_volume,$berat,$sat_berat,$warna) {
	
		$desc = "";
		if($size!='0'){$desc.=$size." ";}
		
		if($panjang_brg != '0' && $lebar_brg == '0' && $tinggi_brg == '0') {
			$desc .= $panjang_brg." ".$sat_panjang." ";
		}elseif($panjang_brg == '0' && $lebar_brg != '0' && $tinggi_brg == '0') {
			$desc .= $lebar_brg." ".$sat_panjang." ";
		}elseif($panjang_brg == '0' && $lebar_brg == '0' && $tinggi_brg != '0') {
			$desc .= $tinggi_brg." ".$sat_panjang." ";
		}elseif($panjang_brg != '0' && $lebar_brg != '0' && $tinggi_brg == '0') {
			$desc .= $panjang_brg." x ".$lebar_brg." ".$sat_panjang." ";
		}elseif($panjang_brg == '0' && $lebar_brg != '0' && $tinggi_brg != '0') {
			$desc .= $lebar_brg." x ".$tinggi_brg." ".$sat_panjang." ";
		}elseif($panjang_brg != '0' && $lebar_brg == '0' && $tinggi_brg != '0') {
			$desc .= $panjang_brg." x ".$tinggi_brg." ".$sat_panjang." ";
		}elseif($panjang_brg != '0' && $lebar_brg != '0' && $tinggi_brg != '0') {
			$desc .= $panjang_brg." x ".$lebar_brg." x ".$tinggi_brg." ".$sat_panjang." ";
		} 
		
		if($volume!='0') {$desc.=$volume." ".$sat_volume." ";} 
		if($berat!='0') {$desc.=$berat." ".$sat_berat." ";} 

		$temp = $nama_barang." ".$jenis." ".$merk." ".$warna." ".$desc;
	
		return $temp;
    }    
}
 ?>