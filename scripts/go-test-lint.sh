#!/bin/bash

set -e

go test ./...
golint -set_exit_status ./...
