// modify items
// Remove items by identifiers
modify(mode=mode.multiple
	where=this.id(id.restore_previous_versions,
				id.give_access_to,
				id.create_shortcut,
				id.copy_to_folder,
				id.move_to_folder,
				id.share,
				id.include_in_library)
	vis=vis.remove)

modify(type="recyclebin" where=window.is_desktop and this.id==id.empty_recycle_bin pos=1 sep)

modify(find="agregar*" pos="top" menu="Pin/Unpin")
modify(find="anclar*" pos="top" menu="Pin/Unpin")
modify(find="desanclar*" pos="bottom" menu="Pin/Unpin")
modify(find="quitar*" pos="bottom" menu="Pin/Unpin")

modify(where=this.id==id.copy_as_path menu="file manage")
modify(type="dir.back|drive.back" where=this.id==id.customize_this_folder pos=1 sep="top" menu="file manage")

modify(where=str.equals(this.name, ["abrir en terminal", "abrir shell de linux aquí"]) || this.id==id.open_powershell_window_here
	pos="bottom" menu="Terminal")

modify(mode=mode.multiple
	where=this.id(
		// id.send_to,
		id.set_as_desktop_background,
		id.rotate_left,
		id.rotate_right,
		id.map_network_drive,
		id.disconnect_network_drive,
		id.format,
		id.eject,
		id.cast_to_device,
		id.print
	)
	pos=1 menu=title.more_options)
	
modify(find="Abrir con*" pos=1)
modify(find="Examinar con Microsoft Defender*" vis=key.shift())
