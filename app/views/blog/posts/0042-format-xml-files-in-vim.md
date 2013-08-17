
# Format xml files in vim

    set equalprg=xmllint\ --format\ --recover -\ 2>/dev/null

Set this value automatically when you open an xml file or set the filetype to xml:

    au Filetype xml setlocal equalprg=xmllint\ --format\ --recover -\ 2>/dev/null

