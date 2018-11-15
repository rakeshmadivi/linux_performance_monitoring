function sar_tool()
{
  # INSTALL sysstat TO USE sar COMMAND
  # sudo apt-get install sysstat

  # Broken down CPU info
  sar -P ALL

  # I/O Stats
  sar -b

  # Disk Utilization
  sar -d

  # Paging info
  sar -B

  # RAM Memory info
  sar -r

  # Swap info
  sar -S

  # Huge Pages info
  sar -H

  # N/W Devices stats
  sar  -n DEV
}

function nice_value_testing()
{
  # LINUX PRIORITIES CHANGES FROM 0-139; 0-99 FOR REAL TIME; 100-139 FOR USERS;
  # PR = 20 + NI WHERE NI IS NICE VALUE RANGING FROM -20 TO +19 (-VE VALUE HIGHER PRIORITY, +VE LOWER PRIORITY)
  
  # Setting nice value to a program
  echo nice -n <value> <program_command>
  
  # OR
  
  echo renice <value> <program_command>
  
  # SCHEDULING POLOCIES IN LINUX
  chrt -m
  
  # Example output in debian 9.
  #
  # SCHED_OTHER min/max priority    : 0/0
  # SCHED_FIFO min/max priority     : 1/99
  # SCHED_RR min/max priority       : 1/99
  # SCHED_BATCH min/max priority    : 0/0
  # SCHED_IDLE min/max priority     : 0/0
  # SCHED_DEADLINE min/max priority : 0/0
  
}
