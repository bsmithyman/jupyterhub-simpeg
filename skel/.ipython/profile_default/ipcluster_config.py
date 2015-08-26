
c.IPClusterEngines.engine_launcher_class = 'MPIEngineSetLauncher'
c.MPIControllerLauncher.controller_cmd = ['/usr/bin/python2', '-m', 'ipyparallel.controller']
c.MPIEngineLauncher.engine_cmd = ['/usr/bin/python2', '-m', 'ipyparallel.engine']
c.MPIEngineSetLauncher.engine_cmd = ['/usr/bin/python2', '-m', 'ipyparallel.engine']

