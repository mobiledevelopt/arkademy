<?php
// application/controllers/Validation.php
defined('BASEPATH') OR exit('No direct script access allowed');
    
  
    if ( ! function_exists('sku'))
    {
        function generate($merk)
        {
            $sku=null;
            $count_suku_kata = str_word_count($merk);
            $suku_kata = explode(" ", $merk);
            for($i=0;$i<$count_suku_kata;$i++){
                $sku =$sku.substr($suku_kata[$i],0,1);
            }
            

            return $sku;
            // if($count_suku_kata == 1)
            // {
            //     $this->form_validation->set_message('custom_validation', "Come on, don't act like spammer!");
            //     return FALSE;
            // }
            // else
            // {
            //     return TRUE;
            // }
        }
    }
     
