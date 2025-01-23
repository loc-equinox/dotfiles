function run
set code (path change-extension '' $argv[1])
co $argv[1] && ./$code & fg
end
