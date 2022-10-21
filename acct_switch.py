#!/usr/bin/env python3

import os
import subprocess

gw2_location = ""
accts_location = ""


def launch_acct(acct, do_update):
    if do_update:
        update_str = "true"
    else:
        update_str = "false"

    thispath = os.path.dirname(os.path.realpath(__file__))
    shscript_path = thispath + '/rungw2.sh'
    subprocess.call(["sh", shscript_path, update_str, acct])


def print_account_options():
    accts = ["acct1", "acct2", "acct3", "acct4", "acct5", "acct7"]
    for acct in accts:
        print("acct: " + acct)

    return accts


if __name__ == "__main__":
    options = print_account_options()

    print("Select an account: ")
    acct = input()

    if acct not in options:
        print("account not valid!")
        exit(1)

    print("Update? (y/n)")
    update_bool = input()
    print("account selected: " + acct)
    if update_bool == "y":
        print("updating!")

    if acct not in options:
        print("account not valid!")
        exit(1)

    launch_acct(acct, update_bool == "y")
