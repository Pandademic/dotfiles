#!/bin/sh

exec picom &>log/picom.log
exec awesome
