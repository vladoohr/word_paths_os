CC=g++
CFLAGS=-std=c++11
LDFLAGS=-lcppunit

SOURCES_APP=WordPaths/functions.cpp WordPaths/Node.cpp
SOURCES_TESTS=TestWordPaths/WordPathsTestCase.cpp

EXECUTABLE_APP=wordpaths
EXECUTABLE_TESTS=tests

all: wordpaths tests
	
wordpaths:
	$(CC) $(PLATFORM) $(CFLAGS) WordPaths/WordPaths.cpp $(SOURCES_APP) -o $(EXECUTABLE_APP)

tests:
	$(CC) $(PLATFORM) $(CFLAGS) TestWordPaths/TestWordPaths.cpp $(SOURCES_TESTS) $(SOURCES_APP) -o $(EXECUTABLE_TESTS) $(LDFLAGS)

clean:
	rm $(EXECUTABLE_WORDPATHS) $(EXECUTABLE_TESTS)

