class MeteorProject
	@MeteorProjectFile = './projects.json'

	projects: {}

	
class MeteorProjectLinux extends MeteorProject
	@FindCommand: 'find /home/ -name ".meteor" | grep -E "\\.meteor"'

class MeteorProjectWindows extends MeteorProject


MeteorProject::getInstance = ->
	alert Os.type()