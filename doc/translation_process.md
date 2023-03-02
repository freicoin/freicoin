Translations
============

The Qt GUI can be easily translated into other languages. Here's how we
handle those translations.

Files and Folders
-----------------

### freicoin-qt.pro

This file takes care of generating `.qm` files from `.ts` files. It is mostly
automated.

### src/qt/freicoin.qrc

This file must be updated whenever a new translation is added. Please note that
files must end with `.qm`, not `.ts`.

    <qresource prefix="/translations">
        <file alias="en">locale/freicoin_en.qm</file>
        ...
    </qresource>

### src/qt/locale/

This directory contains all translations. Filenames must adhere to this format:

    freicoin_xx_YY.ts or freicoin_xx.ts

#### freicoin_en.ts (Source file)

`src/qt/locale/freicoin_en.ts` is treated in a special way. It is used as the
source for all other translations. Whenever a string in the code is changed
this file must be updated to reflect those changes. A  custom script is used
to extract strings from the non-Qt parts. This script makes use of `gettext`,
so make sure that utility is installed (ie, `apt-get install gettext` on 
Ubuntu/Debian). Once this has been updated, lupdate (included in the Qt SDK)
is used to update freicoin_en.ts. This process has been automated, from src/qt,
simply run:
    make translate
    
##### Handling of plurals in the source file

When new plurals are added to the source file, it's important to do the following steps:

1. Open freicoin_en.ts in Qt Linguist (also included in the Qt SDK)
2. Search for `%n`, which will take you to the parts in the translation that use plurals
3. Look for empty `English Translation (Singular)` and `English Translation (Plural)` fields
4. Add the appropriate strings for the singular and plural form of the base string
5. Mark the item as done (via the green arrow symbol in the toolbar)
6. Repeat from step 2. until all singular and plural forms are in the source file
7. Save the source file

##### Creating the pull-request

An updated source file should be merged to github and Transifex will pick it
up from there (can take some hours). Afterwards the new strings show up as "Remaining"
in Transifex and can be translated.

To create the pull-request you have to do:

    git add src/qt/freicoinstrings.cpp src/qt/locale/freicoin_en.ts
    git commit

Syncing with Transifex
----------------------

We are using https://transifex.com as a frontend for translating the client.

https://www.transifex.com/projects/p/freicoin/resource/tx/

The "Transifex client" (see: http://support.transifex.com/customer/portal/topics/440187-transifex-client/articles)
is used to fetch new translations from Transifex. The configuration for this client (`.tx/config`)
is part of the repository.

Do not directly download translations one by one from the Transifex website, as we do a few
postprocessing steps before committing the translations.

### Fetching new translations

1. `python contrib/devtools/update-translations.py`
2. update `src/qt/freicoin.qrc` manually or via
   `ls src/qt/locale/*ts|xargs -n1 basename|sed 's/\(freicoin_\(.*\)\).ts/<file alias="\2">locale\/\1.qm<\/file>/'`
3. update `src/qt/Makefile.am` manually or via
   `ls src/qt/locale/*ts|xargs -n1 basename|sed 's/\(freicoin_\(.*\)\).ts/  locale\/\1.ts \\/'`
4. `git add` new translations from `src/qt/locale/`
runs-on: ubuntu-latest
strategy:
  max-parallel: 4
  matrix:
    python-version: [3.7, 3.8, 3.9]

steps:
- uses: actions/checkout@v3
- name: Set up Python ${{ matrix.python-version }}
  uses: actions/setup-python@v3
  with:
    python-version: ${{ matrix.python-version }}
- name: Install Dependencies
  run: |
    python -m pip install --upgrade pip
    pip install -r requirements.txt
- name: Run Tests
  run: |
    python manage.py test
    diff --git a/.husky/.gitignore b/.husky/.gitignore
deleted file mode 100644
index 31354ec1389..00000000000
--- a/.husky/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-_
diff --git a/.husly/.sh/bitore.sig b/.husly/.sh/bitore.sig
new file mode 100644
index 00000000000..e67f834feea
--- /dev/null
+++ b/.husly/.sh/bitore.sig
@@ -0,0 +1,16 @@
+ BEGIN:
+ GLOW4:
+ </git checkout origin/main <file name>
+Run'' 'Runs::/Action::/:Build::/scripts::/Run-on :Runs :
+Runs :gh/pages :
+pages :edit "
+$ intuit install 
+PURL" --add-label "production"
+env:
+PR_URL: ${{github.event.pull_request.html_url}}
+GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
+run: gh pr edit "$PR_URL" --add-label "production"
+env:
+PR_URL: ${{github.event.pull_request.html_url}}
+GITHUB_TOKEN: ${{ ((c)(r)).[12753750.[00]m]'_BITORE_34173.1337) ')]}}}'"'' :
+ </git checkout origin/main <file name>
    runs-on: ubuntu-latest
strategy:
  max-parallel: 4
  matrix:
    python-version: [3.7, 3.8, 3.9]

steps:
- uses: actions/checkout@v3
- name: Set up Python ${{ matrix.python-version }}
  uses: actions/setup-python@v3
  with:
    python-version: ${{ matrix.python-version }}
- name: Install Dependencies
  run: |
    python -m pip install --upgrade pip
    pip install -r requirements.txt
- name: Runs py.CCharm/WHISK.yml :
 python.read~v 
 manage :setup.py'@Bitore.sigs/test
:Build::
