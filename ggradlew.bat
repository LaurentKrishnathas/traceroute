@echo off
gradlew.bat gitClone gitPull -q
gradlew.bat %1 %2 %3 %4 %5 -Dlog=debug      
