@ECHO OFF
ECHO Creating a predefinded array which contains strings file.0,file.2...,file.4
SET /A i=0
:while_predefined_array
IF %i% LSS 5 (
  ECHO Value of counter %i%
  SET "predefined_file.%%i=%%i"
  PAUSE>NUL
  SET /A i+=1
  GOTO while_predefined_array
)
SET /A i-=1
ECHO The contents of the array is :
FOR /l %%N IN (0 1 %i%) DO ECHO predefined_file.%%N

ECHO:
ECHO Creating a user defined array which contains strings file.0,file.2...,file.(n-1)
SET /P n=Enter the length of array(represented by n) 
SET /A i=0
:while_user_defined_array
IF %i% LSS %n% (
  ECHO Value of counter %i%
  SET "user_defined_file.%%i=%%i"
  PAUSE>NUL
  SET /A i+=1
  GOTO while_user_defined_array
)
SET /A i-=1
ECHO The contents of the array is :
FOR /l %%N IN (0 1 %i%) DO ECHO user_defined_file.%%N

GOTO end

:doc
SET
Displays, sets, or removes cmd.exe environment variables.

SET [variable=[string]]

  variable  Specifies the environment-variable name.
  string    Specifies a series of characters to assign to the variable.

Type SET without parameters to display the current environment variables.

If Command Extensions are enabled SET changes as follows:

SET command invoked with just a variable name, no equal sign or value
will display the value of all variables whose prefix matches the name
given to the SET command.  For example:

    SET P

would display all variables that begin with the letter 'P'

SET command will set the ERRORLEVEL to 1 if the variable name is not
found in the current environment.

SET command will not allow an equal sign to be part of the name of
a variable.

Two new switches have been added to the SET command:

    SET /A expression
    SET /P variable=[promptString]

The /A switch specifies that the string to the right of the equal sign
is a numerical expression that is evaluated.  The expression evaluator
is pretty simple and supports the following operations, in decreasing
order of precedence:

    ()                  - grouping
    ! ~ -               - unary operators
    * / %               - arithmetic operators
    + -                 - arithmetic operators
    << >>               - logical shift
    &                   - bitwise and
    ^                   - bitwise exclusive or
    |                   - bitwise or
    = *= /= %= += -=    - assignment
      &= ^= |= <<= >>=
    ,                   - expression separator

If you use any of the logical or modulus operators, you will need to
enclose the expression string in quotes.  Any non-numeric strings in the
expression are treated as environment variable names whose values are
converted to numbers before using them.  If an environment variable name
is specified but is not defined in the current environment, then a value
of zero is used.  This allows you to do arithmetic with environment
variable values without having to type all those % signs to get their
values.  If SET /A is executed from the command line outside of a
command script, then it displays the final value of the expression.  The
assignment operator requires an environment variable name to the left of
the assignment operator.  Numeric values are decimal numbers, unless
prefixed by 0x for hexadecimal numbers, and 0 for octal numbers.
So 0x12 is the same as 18 is the same as 022. Please note that the octal
notation can be confusing: 08 and 09 are not valid numbers because 8 and
9 are not valid octal digits.

The /P switch allows you to set the value of a variable to a line of input
entered by the user.  Displays the specified promptString before reading
the line of input.  The promptString can be empty.

Environment variable substitution has been enhanced as follows:

    %PATH:str1=str2%

would expand the PATH environment variable, substituting each occurrence
of "str1" in the expanded result with "str2".  "str2" can be the empty
string to effectively delete all occurrences of "str1" from the expanded
output.  "str1" can begin with an asterisk, in which case it will match
everything from the beginning of the expanded output to the first
occurrence of the remaining portion of str1.

May also specify substrings for an expansion.

    %PATH:~10,5%

would expand the PATH environment variable, and then use only the 5
characters that begin at the 11th (offset 10) character of the expanded
result.  If the length is not specified, then it defaults to the
remainder of the variable value.  If either number (offset or length) is
negative, then the number used is the length of the environment variable
value added to the offset or length specified.

    %PATH:~-10%

would extract the last 10 characters of the PATH variable.

    %PATH:~0,-2%

would extract all but the last 2 characters of the PATH variable.

Finally, support for delayed environment variable expansion has been
added.  This support is always disabled by default, but may be
enabled/disabled via the /V command line switch to CMD.EXE.  See CMD /?

Delayed environment variable expansion is useful for getting around
the limitations of the current expansion which happens when a line
of text is read, not when it is executed.  The following example
demonstrates the problem with immediate variable expansion:

    set VAR=before
    if "%VAR%" == "before" (
        set VAR=after
        if "%VAR%" == "after" @echo If you see this, it worked
    )

would never display the message, since the %VAR% in BOTH IF statements
is substituted when the first IF statement is read, since it logically
includes the body of the IF, which is a compound statement.  So the
IF inside the compound statement is really comparing "before" with
"after" which will never be equal.  Similarly, the following example
will not work as expected:

    set LIST=
    for %i in (*) do set LIST=%LIST% %i
    echo %LIST%

in that it will NOT build up a list of files in the current directory,
but instead will just set the LIST variable to the last file found.
Again, this is because the %LIST% is expanded just once when the
FOR statement is read, and at that time the LIST variable is empty.
So the actual FOR loop we are executing is:

    for %i in (*) do set LIST= %i

which just keeps setting LIST to the last file found.

Delayed environment variable expansion allows you to use a different
character (the exclamation mark) to expand environment variables at
execution time.  If delayed variable expansion is enabled, the above
examples could be written as follows to work as intended:

    set VAR=before
    if "%VAR%" == "before" (
        set VAR=after
        if "!VAR!" == "after" @echo If you see this, it worked
    )

    set LIST=
    for %i in (*) do set LIST=!LIST! %i
    echo %LIST%

If Command Extensions are enabled, then there are several dynamic
environment variables that can be expanded but which don't show up in
the list of variables displayed by SET.  These variable values are
computed dynamically each time the value of the variable is expanded.
If the user explicitly defines a variable with one of these names, then
that definition will override the dynamic one described below:

%CD% - expands to the current directory string.

%DATE% - expands to current date using same format as DATE command.

%TIME% - expands to current time using same format as TIME command.

%RANDOM% - expands to a random decimal number between 0 and 32767.

%ERRORLEVEL% - expands to the current ERRORLEVEL value

%CMDEXTVERSION% - expands to the current Command Processor Extensions
    version number.

%CMDCMDLINE% - expands to the original command line that invoked the
    Command Processor.

%HIGHESTNUMANODENUMBER% - expands to the highest NUMA node number
    on this machine.

ECHO
Displays messages, or turns command-echoing on or off.

  ECHO [ON | OFF]
  ECHO [message]

Type ECHO without parameters to display the current echo setting.

IF
Performs conditional processing in batch programs.

IF [NOT] ERRORLEVEL number command
IF [NOT] string1==string2 command
IF [NOT] EXIST filename command

  NOT               Specifies that Windows should carry out
                    the command only if the condition is false.

  ERRORLEVEL number Specifies a true condition if the last program run
                    returned an exit code equal to or greater than the number
                    specified.

  string1==string2  Specifies a true condition if the specified text strings
                    match.

  EXIST filename    Specifies a true condition if the specified filename
                    exists.

  command           Specifies the command to carry out if the condition is
                    met.  Command can be followed by ELSE command which
                    will execute the command after the ELSE keyword if the
                    specified condition is FALSE

The ELSE clause must occur on the same line as the command after the IF.  For
example:

    IF EXIST filename. (
        del filename.
    ) ELSE (
        echo filename. missing.
    )

The following would NOT work because the del command needs to be terminated
by a newline:

    IF EXIST filename. del filename. ELSE echo filename. missing

Nor would the following work, since the ELSE command must be on the same line
as the end of the IF command:

    IF EXIST filename. del filename.
    ELSE echo filename. missing

The following would work if you want it all on one line:

    IF EXIST filename. (del filename.) ELSE echo filename. missing

If Command Extensions are enabled IF changes as follows:

    IF [/I] string1 compare-op string2 command
    IF CMDEXTVERSION number command
    IF DEFINED variable command

where compare-op may be one of:

    EQU - equal
    NEQ - not equal
    LSS - less than
    LEQ - less than or equal
    GTR - greater than
    GEQ - greater than or equal

and the /I switch, if specified, says to do case insensitive string
compares.  The /I switch can also be used on the string1==string2 form
of IF.  These comparisons are generic, in that if both string1 and
string2 are both comprised of all numeric digits, then the strings are
converted to numbers and a numeric comparison is performed.

The CMDEXTVERSION conditional works just like ERRORLEVEL, except it is
comparing against an internal version number associated with the Command
Extensions.  The first version is 1.  It will be incremented by one when
significant enhancements are added to the Command Extensions.
CMDEXTVERSION conditional is never true when Command Extensions are
disabled.

The DEFINED conditional works just like EXIST except it takes an
environment variable name and returns true if the environment variable
is defined.

%ERRORLEVEL% will expand into a string representation of
the current value of ERRORLEVEL, provided that there is not already
an environment variable with the name ERRORLEVEL, in which case you
will get its value instead.  After running a program, the following
illustrates ERRORLEVEL use:

    goto answer%ERRORLEVEL%
    :answer0
    echo Program had return code 0
    :answer1
    echo Program had return code 1

You can also use numerical comparisons above:

    IF %ERRORLEVEL% LEQ 1 goto okay

%CMDCMDLINE% will expand into the original command line passed to
CMD.EXE prior to any processing by CMD.EXE, provided that there is not
already an environment variable with the name CMDCMDLINE, in which case
you will get its value instead.

%CMDEXTVERSION% will expand into a string representation of the
current value of CMDEXTVERSION, provided that there is not already
an environment variable with the name CMDEXTVERSION, in which case you
will get its value instead.

:end