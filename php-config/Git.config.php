<?php

Git::$repositories['laddr'] = [
    'remote' => 'https://github.com/CfABrigadePhiladelphia/laddr.git'
    ,'originBranch' => 'releases/v2'
    ,'workingBranch' => 'releases/v2'
    ,'localOnly' => true
    ,'trees' => [
        'html-templates',
        'locales',
        'php-classes',
        'php-config' => [
            'exclude' => '#^/Git\\.config\\.php$#' // don't sync this file
        ],
        'php-migrations',
        'site-root'
    ]
];