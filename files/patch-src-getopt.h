--- src/getopt.h.orig	2002-08-20 15:31:17.000000000 +0900
+++ src/getopt.h	2011-04-05 13:16:58.000000000 +0900
@@ -128,7 +128,7 @@
    errors, only prototype getopt for the GNU C library.  */
 extern int getopt (int argc, char *const *argv, const char *shortopts);
 #else /* not __GNU_LIBRARY__ */
-extern int getopt ();
+extern int getopt (int argc, char *const *argv, const char *shortopts);
 #endif /* __GNU_LIBRARY__ */
 extern int getopt_long (int argc, char *const *argv, const char *shortopts,
 		        const struct option *longopts, int *longind);
