-- Occasionally something in the regression database cannot be correctly tested
-- with binary-swap. For example, if a bug causes pg_dump to fail, and you fix
-- that bug and add a regression case, then the binary swap tests will
-- predictably fail during the dump of that case because they will use a version
-- of the server that doesn't have the bugfix.
--
-- For these cases, drop the offending tables/features/etc. in this file, which
-- runs before the rest of the binary swap tests.

\connect regression

DROP VIEW IF EXISTS distinct_windowagg_view;