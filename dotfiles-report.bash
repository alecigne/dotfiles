#!/bin/bash

find ~ ! -readable -prune -o -lname "*etc/dotfiles*" -print | sort
