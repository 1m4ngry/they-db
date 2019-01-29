/*
 * glcontainers.h: interface to common Gnulib container helpers
 *
 * Copyright (C) 2019 Colin Watson.
 *
 * This file is part of man-db.
 *
 * man-db is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * man-db is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with man-db; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

#ifndef MAN_GLCONTAINERS_H
#define MAN_GLCONTAINERS_H

#include <stdbool.h>
#include <stdlib.h>

/* These types are compatible with those required by Gnulib container
 * initialisation.
 */

bool string_equals (const void *s1, const void *s2);
size_t string_hash (const void *s);
void plain_free (const void *s);

#define GL_LIST_FOREACH_START(list, item) \
	do { \
		gl_list_iterator_t list##_iter = gl_list_iterator (list); \
		while (gl_list_iterator_next (&list##_iter, \
					      (const void **) &item, NULL))

#define GL_LIST_FOREACH_END(list) \
		gl_list_iterator_free (&list##_iter); \
	} while (0)

#endif /* MAN_GLCONTAINERS_H */