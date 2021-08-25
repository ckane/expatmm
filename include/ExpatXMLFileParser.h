/* 
 * ExpatMM - C++ Wrapper for Expat available at http://github.com/ckane/expatmm
 * Copyright (c) 2015-2021 Coleman Kane
 * Author: Coleman Kane <ckane@colemankane.org>
 * Website: https://github.com/ckane/expatmm
 *
 * Copyright (c) 2007, 2008, 2009 IntelliTree Solutions llc
 * Author: Coleman Kane <ckane@intellitree.com>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General
 * Public License along with this library; if not, please feel free
 * to contact the author listed above.
 */
/*
 * Extension of the ExpatXMLParser to handle named files
 *
 */
#ifndef _EXPATMM_EXPATXMLFILEPARSER_H
#define _EXPATMM_EXPATXMLFILEPARSER_H
#include "ExpatXMLParser.h"
#include "expatmm-libdef.h"

namespace expatmm {
  class FormRuleset;

  class EXPATMM_LIBEXPORT ExpatXMLFileParser : public ExpatXMLParser {
	private:
	  FILE *fhandle;
	  std::string fname;
	protected:
	  virtual ssize_t read_block(void);
	public:
	  ExpatXMLFileParser(std::string filename);
	  virtual ~ExpatXMLFileParser(void);
  };
};

#endif /* _EXPATMM_EXPATXMLFILEPARSER_H */
