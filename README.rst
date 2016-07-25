tapp-config |Build Status| |Coverage Status|
============================================

Configuration for tapps (redis, logger, etc.)

Usage
~~~~~

Reads in a .ini configuration file based on environment variables.

| Each TAPP can specify it's own configuration file by setting the
| environmental variable that corresponds to it's name. The variable
| format is:

``<TAPP_NAME>_CONFIG_FILE``

| So, for example, if your TAPP is named 'test', then this package
| would expect it's config file to be specified in the
``TEST_CONFIG_FILE``
| environmental variable.

| If no environmental variable is found, then the local ``cfg.ini`` path
| is tried.

Contents
~~~~~~~~

| While TAPPs can define their own configuration parameters, this
| package comes with some universal configuration settings for the
| database and logging.

::

    [db]
    SA_ENGINE_URI: sqlite:////tmp/test.db

    [log]
    LOGFILE: /tmp/test.log
    LOGLEVEL: DEBUG

.. |Build Status| image:: https://travis-ci.org/GitGuild/tapp-config.svg?branch=master
   :target: https://travis-ci.org/GitGuild/tapp-config
.. |Coverage Status| image:: https://coveralls.io/repos/GitGuild/tapp-config/badge.svg?branch=master&service=github
   :target: https://coveralls.io/github/GitGuild/tapp-config?branch=master
