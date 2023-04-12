#!/bin/bash

SCENE1="Solo Codex"
SCENE2="Solo Frecs"


SCENE1="Big Codex - Small Frecs"
SCENE2="Big Frecs - Small Codex"

obs-cli scene switch $SCENE1;

sleep 30

obs-cli scene switch $SCENE2;

sleep 30

./autoSwitchScene.sh
