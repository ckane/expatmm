/* 
 * ExpatMM - C++ Wrapper for Expat available at http://expat.sourceforge.net/
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
 * IntelliTree ExpatMM C++ XML Parser Library
 * Copyright (C) 2006, 2007 IntelliTree Solutions llc
 * Written by Coleman Kane <ckane@intellitree.com>
 *
 * Header File, further description below
 *
 */
#ifndef _EXPATMM_EXPAT_LIBDEF_H
#define _EXPATMM_EXPAT_LIBDEF_H

#ifdef WIN32
#ifdef BUILDING_EXPATMM_DLL
# define EXPATMM_LIBEXPORT  __declspec(dllexport)
#else
# define EXPATMM_LIBEXPORT  __declspec(dllimport)
#endif /* DLL_EXPORT */
#endif /* WIN32 */

#ifndef EXPATMM_LIBEXPORT
# define EXPATMM_LIBEXPORT
#endif

#endif /* _EXPATMM_EXPAT_LIBDEF_H */
