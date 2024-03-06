menu(type="taskbar" vis=key.shift() or key.lbutton() pos=0 title=app.name image=\uE249)
{
	item(title="version\t"+@app.ver vis=label)
	item(title="manager" image=\uE0F3 admin cmd='"@app.exe"')
	item(title="directory" image=\uE0E8 cmd='"@app.dir"')
}
menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{
	item(title=title.settings image=icon.settings(auto, image.color1) cmd='ms-settings:')
	item(title=title.task_manager image=icon.task_manager cmd='taskmgr.exe')
	item(title=title.taskbar_Settings image=inherit cmd='ms-settings:taskbar')
	item(vis=key.shift() title=title.exit_explorer sep=Top cmd=command.restart_explorer)
}