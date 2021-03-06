#Target: Dependencies
#<TAB>commands
PROJ_NAME = ASCII
SRC=main.c fun.c  
ifdef OS
   RM = del /q
   FixPath = $(subst /,\,$1)
   EXEC = exe
else
   ifeq ($(shell uname), Linux)
      RM = rm -rf
      FixPath = $1
	  EXEC = out
   endif
endif

Build : $(SRC)  
	gcc $(SRC) -o $(call FixPath,$(PROJ_NAME).$(EXEC)) -lm

Run :Build	
	./$(call FixPath,$(PROJ_NAME).$(EXEC))
	
Build_test : 
	gcc $(TEST_SRC) $(INC) -o $(call FixPath,$(PROJ_NAME).$(EXEC)) -lm

run_test : Build_test
	./$(call FixPath,$(PROJ_NAME).$(EXEC))

static_analysis:
	cppcheck --enable=all $(SRC)




