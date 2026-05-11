#!/bin/bash
cd /home/kavia/workspace/code-generation/habit-tracker-dashboard-344342-344358/habit_tracker_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

