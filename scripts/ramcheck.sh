#!/bin/bash
free | awk '/Mem/{printf("RAM Usage: %.2f%\n"), $3/$2*100}' | awk '{print $3}'
