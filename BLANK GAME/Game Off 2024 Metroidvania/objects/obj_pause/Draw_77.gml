gpu_set_blendenable(false);

if (paused)
{
	surface_set_target(application_surface);
	if surface_exists(paused_surf) draw_surface(paused_surf,0,0);
	else
	{
		paused_surf = surface_create(resW,resH);
		buffer_set_surface(paused_buffer, paused_surf, 0);
	}
	surface_reset_target();
}

if keyboard_check_pressed(vk_escape)
{
	if (!paused)
	{
		paused = true;
		instance_deactivate_all(true);
		paused_surf = surface_create(resW, resH);
		surface_set_target(paused_surf);
			draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		if (buffer_exists(paused_buffer)) buffer_delete(paused_buffer);
		paused_buffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(paused_buffer, paused_surf, 0);
	}
	else
	{
		paused = false;
		instance_activate_all();
		if (surface_exists(paused_surf)) surface_free(paused_surf);
		if (buffer_exists(paused_buffer)) buffer_delete(paused_buffer);
	}
}
gpu_set_blendenable(true);