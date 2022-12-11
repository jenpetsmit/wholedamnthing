# check if python exists
if ! command -v python &> /dev/null
then 
    echo "python is installed at:"
    which python
    echo "Updating SSL cert issue"
    #Upgrade ssl verify for those having issues
    pip install --Upgrade certifi

 fi

    #install packages if missing
if ! command -v python "import mkdocs" &> /dev/null
then   
    echo "installing mkdocs"
    pip install mkdocs
fi


if !command -v python "import mkdocs-material" &> /dev/null
then    
    echo "installing mkdocs-material"
    pip install mkdocs-material
fi

if ! command -v python "import mkdocs-material-extenstions" &> /dev/null
then    
    echo "installing mkdocs-material-extensions "
    pip install mkdocs-material-extensions

fi

if !command -v python "import mk-docs-mermaid2-plugin" &> /dev/null
then    
    echo "installing mkdocs-mermaid2-plugin"
    pip install mkdocs-mermaid2-plugin

fi

# Navigate to directory
cd GDQAWS
# run mkdocs
mkdocs serve