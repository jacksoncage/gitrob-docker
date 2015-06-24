Gitrob Docker Compose
====================



 - Create and set your github API key to gitrob/.gitrobrc

```
---
github_access_tokens:
- YOUR-TOKEN-HERE
```

 - Set `organization` env in `docker-compose.yml` to your organization.

```
  environment:
    ORGANIZATION: github
```

 - Run docker-compose (which will build and link containers)
   `docker-compose up`

```
Attaching to gitrobdocker_psql_1, gitrobdocker_gitrob_1
psql_1   | 2015-06-24 07:39:11 UTC LOG:  database system was interrupted; last known up at 2015-06-24 07:29:14 UTC
psql_1   | 2015-06-24 07:39:13 UTC LOG:  database system was not properly shut down; automatic recovery in progress
psql_1   | 2015-06-24 07:39:13 UTC LOG:  redo starts at 0/16BD518
psql_1   | 2015-06-24 07:39:13 UTC LOG:  record with zero length at 0/16BD558
psql_1   | 2015-06-24 07:39:13 UTC LOG:  redo done at 0/16BD518
psql_1   | 2015-06-24 07:39:13 UTC LOG:  last completed transaction was at log time 2015-06-24 07:29:14.447141+00
psql_1   | 2015-06-24 07:39:13 UTC LOG:  database system is ready to accept connections
psql_1   | 2015-06-24 07:39:13 UTC LOG:  autovacuum launcher started
gitrob_1 |
gitrob_1 | Gitrob is designed for security professionals. If you use any information
gitrob_1 | found through this tool for malicious purposes that are not authorized by
gitrob_1 | the organization, you are violating the terms of use and license of this
gitrob_1 | tool. By using this application, you agree to the terms of use and that you will use
gitrob_1 | this tool for lawful purposes only.
gitrob_1 |       _ _           _
gitrob_1 |   ___|_| |_ ___ ___| |_
gitrob_1 |  | . | |  _|  _| . | . |
gitrob_1 |  |_  |_|_| |_| |___|___|
gitrob_1 |  |___| By @michenriksen
gitrob_1 |  [*] Starting Gitrob version 0.0.6 at 2015-06-24 07:16 UTC
gitrob_1 |  [*] Loading configuration... done
gitrob_1 |  [*] Preparing SQL database... done
gitrob_1 |  [*] Loading file patterns... done
gitrob_1 |  [*] Collecting organization repositories... done
gitrob_1 |  [*] Collecting organization members... done
gitrob_1 |  [*] Collecting member repositories...
```

Known Issues
------------

* Without interactive terminal, the gitrob container will not shut down gracefully.
  Kill it by using `docker kill container_name`

```
Gracefully stopping... (press Ctrl+C again to force)
Stopping gitrobdocker_gitrob_1...
Killing gitrobdocker_gitrob_1...
Killing gitrobdocker_psql_1...
```
