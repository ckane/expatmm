# expatmm
ExpatMM XML Parser class for C++ based upon Expat (http://www.libexpat.org)

* Author: Coleman Kane <ckane@colemankane.org>
* Website: http://github.com/ckane/expatmm

#Building
You will need the libexpat headers installed, as well as autoconf, automake, libtool, etc.

Run the autogen script:
```bash
./autogen.sh
```

Then, you should be able to run configure (see --help for extra options):
```bash
./configure --prefix=/usr/local
```

Then, make & install:
```bash
make
sudo make install
```

# Usage

ExpatMM implements an XML parser as a class, providing virtual methods for the various events that
can occur while parsing. For more information on event-driven XML parsing, please refer to the libexpat
manual, documentation, and source code. The author using the parser in their program should derive a
subclass from ExpatXMLParser or ExpatXMLFileParser (the later being a simple implementation for a quick
XML file parser) and implement the methods for the XML fields that will be interpreted by your parser or
compiler. To use ExpatMM in your software, you will need to #include <expatmm/expatmm.h> as well as the
system headers (before it) that are needed for size_t, std::string, FILE* I/O, and expat itself. All
code and data are in the expatmm namespace.

Commonly, the following headers are necessary: sys/types.h, string, stdio.h, expat.h

For example, a simple parser of a file might look like this (MyFileParser.h):
```C++
#include <sys/types.h>
#include <stdio.h>
#include <string>
#include <expat.h>
#include <expatmm/expatmm.h>

using namespace expatmm;

class MyFileParser : public ExpatXMLFileParser {
  public:
    MyFileParser(std::string filename) : ExpatXMLFileParser(filename) { };
  protected:
    virtual void StartElement(const XML_Char *name, const XML_Char **attrs) {
      printf("Entering %s\n", name);
    };
    virtual void EndElement(const XML_Char *name) {
      printf("Leaving %s\n", name);
    };
};
```

This parser would recognize entering and exiting named sections of the chosen input file, and would
print out a series of messages indicating when it entered and left an XML block (delimited by XML tags).
