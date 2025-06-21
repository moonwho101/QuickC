QuickC 2.5 Samples is a curated collection of sample programs originally developed for Microsoft QuickC 2.5, a classic C compiler and IDE for MS-DOS. These examples showcase vintage C programming techniques, including graphics demos, control structures, and low-level system interactions. Ideal for retro computing enthusiasts, students of programming history, or anyone curious about how C was taught and practiced in the early '90s.

   SAMPLES.DOC File
   QuickC (R) Compiler, Version 2.00

===========================< Samples List >================================

In addition to the reference and "C For Yourself" examples in the QC
Advisor, the following sample programs are provided with QuickC.

     Files              Description
     -----              -----------

     GRDEMO.MAK         GRDEMO illustrates general graphics techniques
     GRDEMO.C           including drawing, animation, palette
     MENU.C             switching, window adjustment, menus, mouse,
     MENU.H             and turtle graphics. The MENU, MOUSE, and TURTLE
     MOUSE.C            modules are independent modules that could be
     MOUSE.H            used in your own programs.
     TURTLE.C
     TURTLE.H

     LIFE.MAK           LIFE illustrates general C and inline assembler
     LIFE.C             techniques. In particular, it shows how to write
     TOOLS.C            entire screens to the screen buffer. The TOOLS
     TOOLS.H            module contains independent functions and
                        macros that could be used in your own programs.


     CHRTDEMO.MAK       CHRTDEMO illustrates presentation graphics
     CHRTDEMO.C         techniques. You can use this program as a tool
     CHRTSUPT.C         for testing different modes and options before
     CHRTOPT.C          building them into your own programs.
     CHRTDEMO.H

======================< Note on Graphics Libraries >=======================

GRDEMO and LIFE require GRAPHICS.LIB. CHRTDEMO requires GRAPHICS.LIB
and PGCHART.LIB. If you did not request these libraries in your
combined library files during setup, you will get "unresolved
external" linker errors when you try to compile the programs.

If you are using the QC environment, you must add the appropriate
library names to the program list (.MAK) files. For example, if you
want to compile LIFE, select Edit Program List from the Make menu. A
dialog box will appear showing the contents of the LIFE.MAK program
list. Enter the name GRAPHICS.LIB at the File Name prompt and select
the Save List button.

If you are using QCL, specify the library names on the command line.
For example, use this command line to compile LIFE:

   QCL life.c tools.c graphics.lib


======================< Note on Naming Conventions >=======================

Two example programs, CHRTDEMO and GRDEMO, use a subset of the naming
conventions used in OS/2 and Windows include files. In this
convention, the first character of an identifier is a lowercase letter
called a prefix. Common prefixes include p (pointer), a (array), i
(index), and c (count). After the prefix, there may be an additional
lowercase tag, usually indicating type. Common tags include ch (char),
f (flag), sz (zero-terminated string) l (long), and x or y (x or y
coordinate). Following this there may be one or more qualifiers, each
beginning with an uppercase letter. For example, an identifier called
achFileName is an array (a) of characters (ch) containing a file name
(FileName).
