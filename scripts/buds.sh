#!/bin/bash
bluetoothctl power on
bluetoothctl discoverable on
bluetoothctl connect 84:5F:04:FC:8C:0C
bluetoothctl discoverable off
