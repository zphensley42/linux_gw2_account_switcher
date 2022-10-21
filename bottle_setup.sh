#!/bin/bash

function setupGw2Bottles() {
#   bottles-cli add -b gw2_acct1 -p "/home/zhensley/.var/app/com.usebottles.bottles/data/bottles/bottles/gw2_base/drive_c/Program Files/Guild Wars 2/Gw2-64.exe" -n Gw2-64_update
#   bottles-cli add -b gw2_acct2 -p "/home/zhensley/.var/app/com.usebottles.bottles/data/bottles/bottles/gw2_base/drive_c/Program Files/Guild Wars 2/Gw2-64.exe" -n Gw2-64_update
#   bottles-cli add -b gw2_acct3 -p "/home/zhensley/.var/app/com.usebottles.bottles/data/bottles/bottles/gw2_base/drive_c/Program Files/Guild Wars 2/Gw2-64.exe" -n Gw2-64_update
#   bottles-cli add -b gw2_acct4 -p "/home/zhensley/.var/app/com.usebottles.bottles/data/bottles/bottles/gw2_base/drive_c/Program Files/Guild Wars 2/Gw2-64.exe" -n Gw2-64_update
#   bottles-cli add -b gw2_acct5 -p "/home/zhensley/.var/app/com.usebottles.bottles/data/bottles/bottles/gw2_base/drive_c/Program Files/Guild Wars 2/Gw2-64.exe" -n Gw2-64_update
#   bottles-cli add -b gw2_acct6 -p "/home/zhensley/.var/app/com.usebottles.bottles/data/bottles/bottles/gw2_base/drive_c/Program Files/Guild Wars 2/Gw2-64.exe" -n Gw2-64_update
#   bottles-cli add -b gw2_acct7 -p "/home/zhensley/.var/app/com.usebottles.bottles/data/bottles/bottles/gw2_base/drive_c/Program Files/Guild Wars 2/Gw2-64.exe" -n Gw2-64_update

    user_dir="/home/zhensley"
    base_name="gw2_base"
    base_exec_dir="${user_dir}/.var/app/com.usebottles.bottles/data/bottles/bottles/${base_name}/drive_c/Program Files/Guild Wars 2/Gw2-64.exe"

    acct_name="$1"
    bottle_name="gw2_${acct_name}"

    bottles-cli new --bottle-name "${bottle_name}" --environment gaming --arch win64 --runner soda-7.0-4 --dxvk dxvk-1.10.3 --vkd3d vkd3d-proton-2.6-1-5b73139 --nvapi dxvk-nvapi-v0.5.4 --latencyflex latencyflex-v0.1.0
    bottles-cli add -b "${bottle_name}" -p "${base_exec_dir}" -n Gw2-64 -l "__GL_THREADED_OPTIMIZATIONS=1 DXVK_ASYNC=1 %command% -shareArchive -autologin"
    bottles-cli add -b "${bottle_name}" -p "${base_exec_dir}" -n Gw2-64_update -l "__GL_THREADED_OPTIMIZATIONS=1 DXVK_ASYNC=1 %command%"
}
