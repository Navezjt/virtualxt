// Copyright (c) 2019-2024 Andreas T Jonsson <mail@andreasjonsson.se>
//
// This software is provided 'as-is', without any express or implied
// warranty. In no event will the authors be held liable for any damages
// arising from the use of this software.
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it
// freely, subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented; you must not
//    claim that you wrote the original software. If you use this software
//    in a product, an acknowledgment in the product documentation would be
//    appreciated but is not required.
//
// 2. Altered source versions must be plainly marked as such, and must not be
//    misrepresented as being the original software.
//
// 3. This notice may not be removed or altered from any source
//    distribution.

#include "../../modules/vga/vga.c"

struct vxt_peripheral *vga_card_create(vxt_allocator *alloc, struct frontend_video_adapter *va) {
    struct vxt_peripheral *p = vga_create(alloc, NULL, NULL);
    if (p)
		*va = (struct frontend_video_adapter){p, &border_color, &snapshot, &render};
	if (0)
		bios_create(NULL, NULL, NULL);
	return p;
}
