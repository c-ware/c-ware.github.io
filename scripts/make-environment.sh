#!/bin/sh
# Make the c-ware environment. Requires sudo privileges.

PREFIX=/usr/local
NAMESPACE=cware
MANDB_PATH=/etc/man_db.conf
SECTIONS=`grep '^SECTION' "$MANDB_PATH"`

# Make the category folder for manuals and make the section
mkdir $PREFIX/share/man/cware --parents
sed -i "s/$SECTIONS/${SECTIONS} $NAMESPACE/g" "$MANDB_PATH"

# Make the header folder
mkdir $PREFIX/include/$NAMESPACE --parents
