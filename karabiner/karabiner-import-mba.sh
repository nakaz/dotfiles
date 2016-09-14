#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set general.disable_internal_keyboard_if_external_keyboard_exsits 1
/bin/echo -n .
$cli set option.vimode_fn_hjkl 1
/bin/echo -n .
$cli set private.CTRL_hack 1
/bin/echo -n .
$cli set private.CTRLCMD_hack 1
/bin/echo -n .
$cli set private.switch0 1
/bin/echo -n .
$cli set remap.controlL2fn 1
/bin/echo -n .
$cli set remap.fn_wsad_to_arrow_keys 1
/bin/echo -n .
$cli set remap.hjkl_arrow 1
/bin/echo -n .
$cli set remap.hjkl_arrow_xcode 1
/bin/echo -n .
$cli set repeat.initial_wait 180
/bin/echo -n .
$cli set repeat.wait 20
/bin/echo -n .
/bin/echo
