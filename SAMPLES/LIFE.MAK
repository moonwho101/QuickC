PROJ	=LIFE
DEBUG	=1
CC	=qcl
CFLAGS_G	=
CFLAGS_D	=/Od /Gi$(PROJ).mdt /Zi /Zr
CFLAGS_R	=/O /DNDEBUG
CFLAGS	=$(CFLAGS_G) $(CFLAGS_D)
LFLAGS_G	=/NOI
LFLAGS_D	=/INCR /CO
LFLAGS_R	=
LFLAGS	=$(LFLAGS_G) $(LFLAGS_D)
RUNFLAGS	=
H = 	tools.h 
OBJS_EXT = 	
LIBS_EXT = c:\qc25\lib\graphics.lib

.asm.obj: ; $(AS) $(AFLAGS) -c $*.asm

all:	$(PROJ).EXE

life.obj:	life.c $(H)

tools.obj:	tools.c $(H)

$(PROJ).EXE:	life.obj tools.obj $(OBJS_EXT)
	echo >NUL @<<$(PROJ).crf
life.obj +
tools.obj +
$(OBJS_EXT)
$(PROJ).EXE

$(LIBS_EXT);
<<
	ilink -a -e "qlink $(LFLAGS) @$(PROJ).crf" $(PROJ)

run: $(PROJ).EXE
	$(PROJ) $(RUNFLAGS)

