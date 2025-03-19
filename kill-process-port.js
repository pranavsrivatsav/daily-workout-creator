const { exec } = require('child_process');

const port = 8000;
const isWindows = process.platform === 'win32';

const findCommand = isWindows
  ? `netstat -ano | findstr :${port}`
  : `lsof -i :${port} | grep LISTEN | awk '{print $2}'`;

exec(findCommand, (error, stdout) => {
  if (error) {
    console.error(`Error finding process on port ${port}:`, error);
    return;
  }

  let pid;

  if (isWindows) {
    const matches = stdout.match(/(\d+)\s*$/m);
    if (matches && matches[1]) {
      pid = matches[1];
    }
  } else {
    pid = stdout.trim();
  }

  if (pid) {
    console.log(`Process ID running on port ${port}: ${pid}`);

    const killCommand = isWindows 
      ? `taskkill /F /PID ${pid}`
      : `kill -9 ${pid}`;

    exec(killCommand, (killError, killStdout) => {
      if (killError) {
        console.error(`Error killing process ${pid}:`, killError);
        return;
      }
      
      console.log(`Process ${pid} has been terminated.`);
    });
  } else {
    console.log(`No process found on port ${port}`);
  }
});