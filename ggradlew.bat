@echo off
gradlew.bat clone pull -q
gradlew.bat %1 %2 %3 %4 %5 -Dlog=debug      
