<?php
$config = array(
    'group_one' => array(
        array(
            'field' => 'jumlah_barang',
            'label' => 'jumlah barang',
            'rules' => 'required',
            'errors' => array(
                    'required' => '%s kosong',
                ),
            ),
    ),
    'group_two' => array(
        array(
            'field' => 'min_text_field',
            'label' => 'Text Field Two',
            'rules' => 'required|min_length[8]'
        ),
        array(
            'field' => 'max_text_field',
            'label' => 'Text Field Three',
            'rules' => 'required|max_length[20]'
        )
    )

);