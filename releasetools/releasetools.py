def FullOTA_InstallEnd(info):
  info.script.AppendExtra('package_extract_file("boot.img", "/tmp/boot.img");');
  info.script.AppendExtra('run_program("/sbin/dd", "if=/tmp/boot.img", "of=/dev/bootimg");');
