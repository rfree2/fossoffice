
This are ideas to secure apt download process:
1) for malicious FTP server giving wrong file (not matching sources) to all users
2) for malicious FTP server giving wrong file (not matching sources) to selected sers while not to other users
3) for malicious builds where the .deb files are not matching sources 
4) for malicious builds where the .deb files are matching sources but source was backdoored

1) is solved by deterministic-build + multi-sign
2) is solved by deterministic-build + multi-sign, or multi-sign of downloaded files (list of known-good files)
3) is solved by deterministic-build + multi-sign
4) is solved by deterministic-build + multi-sign + code-review

This ideas will be used in mempo.org project, so that you can install mempo's packages without need to trust neither 
our repository server nor our build machine nor developers, instead it is enough to have 1 or few trusted friends
who can verify (whether binary = source, and whether source = assumed-good-source + patches-that-appear-good).

