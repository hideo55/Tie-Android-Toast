use inc::Module::Install;
name 'Tie-Android-Toast';
all_from 'lib/Tie/Android/Toast.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
