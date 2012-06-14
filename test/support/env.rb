def skip_if_emulator
 if Azure.config.table_host =~ /localhost/
   skip "This test will only run in Live environment"
 end
end
