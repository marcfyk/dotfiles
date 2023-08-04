let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : ['%a', '%h-%d', '%H:%M'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : '',
      \'y'    : ['RAM: [#{ram_icon}] #{ram_percentage}', 'CPU: [#{cpu_icon}] #{cpu_percentage}', 'Online: #{online_status}'],
      \'z'    : '#H'}
