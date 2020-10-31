CXX = g++
CXXFLAGS = -std=c++14 -Wall -MMD
EXEC = watan
OBJECTS = main.o board.o criterion.o fairrollstrategy.o game.o goal.o loadedrollstrategy.o piece.o player.o rollstrategy.o subject.o textdisplay.o tile.o
DEPENDS = ${OBJECTS:.o=.d}

${EXEC}: ${OBJECTS}
	${CXX} ${CXXFLAGS} ${OBJECTS} -o ${EXEC}

-include ${DEPENDS}

.PHONY: clean

clean:
	rm ${OBJECTS} ${EXEC} ${DEPENDS}
