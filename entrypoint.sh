#!/bin/bash

case "$1" in
    tests)
        init_db
        exec Rscript dga_test.R
        ;;
    *)
        echo "Unknown command"
        ;;
esac
