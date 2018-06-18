# ------------------------------------------------------------------------------------------- #
# Programm name
PROG_NAME	:= ucmp-bk

# where built files will be stored
TARGET_DIR	:= build
TARGET		:= $(PROG_NAME)

# Main programm sources
HEADERS		:= $(shell find src -type f -name *.h)
OBJS		:= $(patsubst %.c, %.o, $(shell find src -type f -name "*.c"))

# Optimization / debug flags
OPT			:= -O2 #-g3 -Og

# Common C and Linker flags
FLAGS		:= $(OPT) #-Wextra #-Werror
CFLAGS		:= $(FLAGS)
LDFLAGS		:= 

# Include directories
INCLUDE		:= lib

# External libraries
LIBS		:= 

# Cross-compile tools
PREFIX		:= 
CC			:= $(PREFIX)gcc
LD			:= $(PREFIX)gcc

all: $(TARGET)	
	
$(TARGET): $(OBJS) $(HEADERS)
	@$(LD) -o $@ $(OBJS) $(LIBS) $(LDFLAGS) 

%.o : %.c $(HEADERS)
	@$(CC) $(CFLAGS) $(addprefix -I, $(INCLUDE)) -o $@ -c $<
		
clean:
	@rm -rf $(OBJS)
	@rm -rf $(TARGET_DIR)/*
	@rm -rf $(TARGET)	
	
.PHONY:
	all clean pgm
