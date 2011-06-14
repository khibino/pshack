
HC = ghc

hs_src = \
	Tool.hs \
	test0.hs

objs = $(hs_src:.hs=.o)

programs = test0

%.o: %.hs
	$(HC) -c -Wall -o $@ $<

%: %.hs
	ghc --make $@

all: $(objs) $(programs)
	hlint --utf8 .

clean:
	$(RM) *.hi *.o
