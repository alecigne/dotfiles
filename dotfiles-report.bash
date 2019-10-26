#!/bin/bash

find ~ ! -readable -prune -o -lname "*dotfiles*" -print | sort
