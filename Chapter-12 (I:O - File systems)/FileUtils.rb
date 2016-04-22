require 'fileutils'

FileUtils.cp("directories.rb", "directories.rb.bak")
# FileUtils.mkdir("backup")
FileUtils.cp(["directories.rb", "file_writing.rb"], "backup")
p Dir["backup/*"]

FileUtils.mv("directories.rb.bak", "backup")
p Dir["backup/*"]
FileUtils.rm("backup/directories.rb.bak")
p Dir["backup/*"]

FileUtils.rm_rf("backup")
p File.exist?("backup")

# There's also NoWrite and DryRun commands too
#FileUtils::DryRun.rm_rf("backup")
#FileUtils::NoWrite.rm("backup/super.rb")