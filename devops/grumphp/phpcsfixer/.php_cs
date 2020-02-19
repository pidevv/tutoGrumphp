<?php

$finder = PhpCsFixer\Finder::create()
    ->in(__DIR__.'/../../..' .DIRECTORY_SEPARATOR.'src')
;

return PhpCsFixer\Config::create()
    ->setRules([
        '@PSR2'                  => true,
        '@Symfony'               => true,
        'strict_param'           => true,
        'ordered_imports'        => true,
        '@Symfony:risky'         => true,
        'array_syntax'           => ['syntax' => 'short'],
        'binary_operator_spaces' => [
            'operators' => [
                '=>' => 'align_single_space_minimal'
            ],
//            'default' => 'align'
        ],
        'linebreak_after_opening_tag'           => true,
        'mb_str_functions'                      => true,
        'no_php4_constructor'                   => true,
        'no_superfluous_phpdoc_tags'            => true,
        'no_unreachable_default_argument_value' => true,
        'no_useless_else'                       => true,
        'no_useless_return'                     => true,
        'php_unit_strict'                       => true,
        'phpdoc_order'                          => true,
        'semicolon_after_instruction'           => true,
        'strict_comparison'                     => true,
    ])
    ->setFinder($finder)
    ;