# Defined in - @ line 1
function lt --wraps='ls -lrt' --description 'alias lt=ls -lrt'
  ls -lrt $argv;
end
