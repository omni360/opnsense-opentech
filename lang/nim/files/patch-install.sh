--- install.sh.orig	2017-01-10 13:55:39.983263000 +0000
+++ install.sh	2017-01-10 14:01:20.665343000 +0000
@@ -15,48 +15,14 @@
     "--help"|"-h"|"help"|"h")
       echo "Nim installation script"
       echo "Usage: [sudo] sh install.sh DIR"
-      echo "Where DIR may be:"
-      echo "  /usr/bin"
-      echo "  /usr/local/bin"
-      echo "  /opt"
-      echo "  <some other dir> (treated similar to '/opt')"
-      echo "To deinstall, use the command:"
-      echo "sh deinstall.sh DIR"
       exit 1
       ;;
-    "/usr/bin")
-      bindir=/usr/bin
-      configdir=/etc
-      libdir=/usr/lib/nim
-      docdir=/usr/share/nim/doc
-      datadir=/usr/share/nim/data
-      nimbleDir="/opt/nimble/pkgs/compiler-0.16.0"
-      ;;
-    "/usr/local/bin")
-      bindir=/usr/local/bin
-      configdir=/etc
-      libdir=/usr/local/lib/nim
-      docdir=/usr/local/share/nim/doc
-      datadir=/usr/local/share/nim/data
-      nimbleDir="/opt/nimble/pkgs/compiler-0.16.0"
-      ;;
-    "/opt")
-      bindir="/opt/nim/bin"
-      configdir="/opt/nim/config"
-      libdir="/opt/nim/lib"
-      docdir="/opt/nim/doc"
-      datadir="/opt/nim/data"
-      nimbleDir="/opt/nimble/pkgs/compiler-0.16.0"
-      mkdir -p /opt/nim
-      mkdir -p $bindir
-      mkdir -p $configdir
-      ;;
     *)
-      bindir="$1/nim/bin"
-      configdir="$1/nim/config"
-      libdir="$1/nim/lib"
-      docdir="$1/nim/doc"
-      datadir="$1/nim/data"
+      bindir="$1/bin"
+      configdir="$1/etc"
+      libdir="$1/lib"
+      docdir="$1/share/doc/nim"
+      datadir="$1/share/nim"
       nimbleDir="$1/nim"
       mkdir -p $1/nim
       mkdir -p $bindir
@@ -823,13 +789,6 @@
 else
   echo "Nim installation script"
   echo "Usage: [sudo] sh install.sh DIR"
-  echo "Where DIR may be:"
-  echo "  /usr/bin"
-  echo "  /usr/local/bin"
-  echo "  /opt"
-  echo "  <some other dir> (treated similar to '/opt')"
-  echo "To deinstall, use the command:"
-  echo "sh deinstall.sh DIR"
   exit 1
 fi
 