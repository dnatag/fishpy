function fishpy --description='initialize a python project with virtualenv git and default template'
    if not hash pip 2>/dev/null
        echo '*** ERROR: pip (and probably python) is not installed'
        return
    end

    if not hash pain 2>/dev/null
        echo '*** ERROR: pain is not installed'
        return
    end

    if not contains mkvirtualenv (functions -n)
        echo '*** ERROR: mkvirtualenv (and probably virtualfish) is not installed' 
        return
    end

    pain new $argv[1]
    cd $argv[1]
    mkvirtualenv $argv[1]
    pip install pip-accel

    echo '__pycache__
*.py[cod]
*.so
*.sublime-project
*.sublime-workspace' > .gitignore
    git init .
    git add *
    git commit -m 'Initial commit of skeleton python'

    cd $argv[1]
    echo '{
    "folders":
    [
        {
            "follow_symlinks": true,
            "path": "."
        }
    ]
}' > $argv[1].sublime-project

end
