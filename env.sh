##
## source file
##
vpy="python3.11"
venvdir="${VENVDIR:-"$HOME/.venvs/$(basename $(pwd))"}"

mkdir -p "${venvdir}"

if [ ! -f "${venvdir}/bin/activate" ]
then
    ${vpy} -m venv "${venvdir}"
fi

source "${venvdir}/bin/activate"
${vpy} -m pip install pip -U "pip==23.3.1; python_version>='3.8'"

if [ -f requirements.txt ]
then
	${vpy} -m pip install -r requirements.txt
fi
