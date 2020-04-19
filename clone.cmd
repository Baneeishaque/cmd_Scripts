@ECHO OFF
CALL additional
DEL clone-results.txt

:ant
ECHO Processing Ant Projects | tee -a clone-results.txt
mkdir Ant_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE ant.txt') DO (
	cd Ant_Projects 2>NUL
	ECHO Processing %%a | tee -a ant_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed Ant Projects | tee -a clone-results.txt

:action_script
ECHO Processing Action Script Projects | tee -a clone-results.txt
mkdir Action_Script_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE as.txt') DO (
	cd Action_Script_Projects 2>NUL
	ECHO Processing %%a | tee -a action_script_clone-results.txt	
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed Action Script Projects | tee -a clone-results.txt

:D
ECHO Processing D Projects | tee -a clone-results.txt
mkdir D_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE d.txt') DO (
	cd D_Projects 2>NUL
	ECHO Processing %%a | tee -a D_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed D Projects | tee -a clone-results.txt

:go
ECHO Processing go Projects | tee -a clone-results.txt
mkdir go_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE go.txt') DO (
	cd go_Projects 2>NUL
	ECHO Processing %%a | tee -a go_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed go Projects | tee -a clone-results.txt

:cpp
ECHO Processing cpp Projects | tee -a clone-results.txt
mkdir cpp_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE cpp.txt') DO (
	cd cpp_Projects 2>NUL
	ECHO Processing %%a | tee -a cpp_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed cpp Projects | tee -a clone-results.txt

:misc
ECHO Processing Misc Projects | tee -a clone-results.txt
mkdir Misc_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE misc.txt') DO (
	cd Misc_Projects 2>NUL
	ECHO Processing %%a | tee -a Misc_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed Misc Projects | tee -a clone-results.txt

:Multiple
ECHO Processing Multiple Projects | tee -a clone-results.txt
mkdir Multiple_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE Multiple.txt') DO (
	cd Multiple_Projects 2>NUL
	ECHO Processing %%a | tee -a Multiple_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed Multiple Projects | tee -a clone-results.txt

:npm
ECHO Processing NPM Projects | tee -a clone-results.txt
mkdir NPM_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE npm-cmd.txt') DO (
	cd NPM_Projects 2>NUL
	ECHO Processing %%a | tee -a NPM_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed NPM Projects | tee -a clone-results.txt

:rust
ECHO Processing rust Projects | tee -a clone-results.txt
mkdir rust_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE rust.txt') DO (
	cd rust_Projects 2>NUL
	ECHO Processing %%a | tee -a rust_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed rust Projects | tee -a clone-results.txt

:titanium
ECHO Processing titanium Projects | tee -a clone-results.txt
mkdir titanium_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE titanium.txt') DO (
	cd titanium_Projects 2>NUL
	ECHO Processing %%a | tee -a titanium_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed titanium Projects | tee -a clone-results.txt

:bosh
ECHO Processing bosh Projects | tee -a clone-results.txt
mkdir bosh_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE bosh.txt') DO (
	cd bosh_Projects 2>NUL
	ECHO Processing %%a | tee -a bosh_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed bosh Projects | tee -a clone-results.txt

:ruby
ECHO Processing ruby Projects | tee -a clone-results.txt
mkdir ruby_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE ruby.txt') DO (
	cd ruby_Projects 2>NUL
	ECHO Processing %%a | tee -a ruby_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed ruby Projects | tee -a clone-results.txt

:mono
ECHO Processing mono Projects | tee -a clone-results.txt
mkdir mono_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE mono.txt') DO (
	cd mono_Projects 2>NUL
	ECHO Processing %%a | tee -a mono_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed mono Projects | tee -a clone-results.txt

:wget
ECHO Processing wget Projects | tee -a clone-results.txt
mkdir wget_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE wget.txt') DO (
	cd wget_Projects 2>NUL
	ECHO Processing %%a | tee -a wget_clone-results.txt
	wget -c %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed wget Projects | tee -a clone-results.txt

:haskell
ECHO Processing haskell Projects | tee -a clone-results.txt
mkdir haskell_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE haskell.txt') DO (
	cd haskell_Projects 2>NUL
	ECHO Processing %%a | tee -a haskell_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed haskell Projects | tee -a clone-results.txt

:maven
ECHO Processing maven Projects | tee -a clone-results.txt
mkdir maven_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE maven.txt') DO (
	cd maven_Projects 2>NUL
	ECHO Processing %%a | tee -a maven_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed maven Projects | tee -a clone-results.txt

:python
ECHO Processing Python Projects | tee -a clone-results.txt
mkdir Python_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE python.txt') DO (
	cd Python_Projects 2>NUL
	ECHO Processing %%a | tee -a Python_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed Python Projects | tee -a clone-results.txt

:docker
ECHO Processing docker Projects | tee -a clone-results.txt
mkdir docker_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE docker.txt') DO (
	cd docker_Projects 2>NUL
	ECHO Processing %%a | tee -a docker_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
ECHO Completed docker Projects | tee -a clone-results.txt

:gradle-studio
ECHO Processing Gradle Android Studio Projects | tee -a clone-results.txt
mkdir Gradle_Projects\Android_Studio_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE gradle-studio.txt') DO (
	cd Gradle_Projects/Android_Studio_Projects 2>NUL
	ECHO Processing %%a | tee -a gradle-studio_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
CD ..
ECHO Completed Gradle Android Studio Projects | tee -a clone-results.txt

:gradle-kotlin
ECHO Processing Gradle Kotlin Projects | tee -a clone-results.txt
mkdir Gradle_Projects\Kotlin_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE kotlin.txt') DO (
	cd Gradle_Projects/Kotlin_Projects 2>NUL
	ECHO Processing %%a | tee -a gradle-kotlin_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
REM GOTO end
CD ..
CD ..
ECHO Completed Gradle Kotlin Projects | tee -a clone-results.txt

:www-npm
ECHO Processing WWW NPM Projects | tee -a clone-results.txt
mkdir WWW_Projects\NPM_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE npm-www.txt') DO (
	cd WWW_Projects/NPM_Projects 2>NUL
	ECHO Processing %%a | tee -a wwww-npm_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
CD ..
ECHO Completed WWW NPM Projects | tee -a clone-results.txt

:www-angular
ECHO Processing WWW angular Projects | tee -a clone-results.txt
mkdir WWW_Projects\angular_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE angular-www.txt') DO (
	cd WWW_Projects/angular_Projects 2>NUL
	ECHO Processing %%a | tee -a wwww-angular_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
CD ..
ECHO Completed WWW angular Projects | tee -a clone-results.txt

:www-js
ECHO Processing WWW Java_Script Projects | tee -a clone-results.txt
mkdir WWW_Projects\Java_Script_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE Java_Script-www.txt') DO (
	cd WWW_Projects/Java_Script_Projects 
	ECHO Processing %%a | tee -a wwww-Java_Script_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
CD ..
ECHO Completed WWW Java_Script Projects | tee -a clone-results.txt

:www-php
ECHO Processing WWW php Projects | tee -a clone-results.txt
mkdir WWW_Projects\php_Projects
FOR /F "TOKENS=*" %%a IN ('TYPE php-www.txt') DO (
	cd WWW_Projects/php_Projects 
	ECHO Processing %%a | tee -a wwww-php_clone-results.txt
	git clone %%a
	REM IF "%2"=="I" (PAUSE)
)
CD ..
CD ..
ECHO Completed WWW php Projects | tee -a clone-results.txt

:end