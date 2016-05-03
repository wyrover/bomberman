##
## Makefile for  in core
##
## Made by sebastien saletes
## Login   <salete_s@epitech.net>
##
## Started on  Wed Jan 21 03:29:00 2015 sebastien saletes
## Last update Sun May 24 21:12:33 2015 sebastien saletes
##

CXX = g++

NAME_EXE = bomberman
SRC_EXE = main.cpp

OBJ_EXE = $(SRC_EXE:.cpp=.o)

LIBDIR  = -Llib
LDFLAGS = -lIrrlicht -lGL -lXxf86vm -lXext -lX11 -lXcursor
CXXFLAGS += -W -Wall -Wextra  -std=c++11
CXXFLAGS += -isystem lib/include

all: $(NAME_EXE)

$(NAME_EXE): $(OBJ_EXE)
	$(CXX) -o $(NAME_EXE) $(OBJ_EXE) $(LIBDIR) $(LDFLAGS)

clean:
	rm -f $(OBJ_EXE)

fclean: clean
	rm -f $(NAME_EXE)

re: fclean all

.PHONY: all clean fclean re
