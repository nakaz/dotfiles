#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set option.vimode_fn_hjkl 1
/bin/echo -n .
$cli set remap.fn_wsad_to_arrow_keys 1
/bin/echo -n .
$cli set remap.hjkl_arrow_xcode 1
/bin/echo -n .
$cli set remap.pc_application2fn 1
/bin/echo -n .
$cli set repeat.initial_wait 250
/bin/echo -n .
$cli set repeat.wait 30
/bin/echo -n .
/bin/echo
