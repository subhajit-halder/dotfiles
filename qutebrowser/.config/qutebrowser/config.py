# type `:help` to see all the possible options 
# c.content.javascript.enabled = False is the same as writing ;
# config.set('content.javascript.enabled', Flase)

# load autoconfig.yml file configured by the browser first, all the settins in config.py will override that
# put this in the end if you want to reverse that 
config.load_autoconfig()

# set smooth scrolling
c.scrolling.smooth = True
# Default zoom
c.zoom.default = 120
# Open new tabs (middleclick/ctrl+click) in the background.
c.tabs.background = True
# links opened from other apps will open in new tab in present window
c.new_instance_open_target = 'tab'
# where to show downloaded files
c.downloads.position = 'bottom'
# tabs position
c.tabs.position = 'top'
# tab padding
c.tabs.padding = {"bottom": 5, "left": 2, "right": 2, "top": 5}

# fonts 
c.fonts.default_family = 'FantasqueSansMono Nerd Font'
c.fonts.default_size = '18pt'
c.fonts.hints = 'bold 16pt Karla' 
#c.fonts.tabs.selected = '18pt default_family'
#c.fonts.tabs.unselected = '18pt default_family'

# find search item incrementally
c.search.incremental = True
# which editor to open from browser
c.editor.command = ['/usr/bin/nvim', '{}']


# c.content.javascript.enabled = False
config.source('themes/gruvbox-dark-hard.py')
