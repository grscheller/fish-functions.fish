function pathtrim --description 'Canonicalize $PATH'

    set -f Path ()
    set -f NewPath ()

    # Parse cmdline options
    argparse -n pathtrim h/help -- $argv
    and begin
        if [ (count $argv) -gt 0 ]
            set Path $argv
        else
            set Path $PATH
        end
        true
    end
    or begin
        printf '              For usage type: pathtrim -h\n'
        return 2
    end

    # Print help message and quit
    if set -q _flag_help
        printf 'Usage: pathtrim\n' >&2
        printf '       pathtrim $PATH_VARIABLE\n' >&2
        printf '       pathtrim [-h|--help]\n\n' >&2
        printf 'Returns: 0 if "happy path" followed\n' >&2
        printf '         1 if -h or --help option given\n' >&2
        printf '         2 for invalid option or argument number\n\n' >&2
        printf 'Side Effects: Trims off duplicate & non-existant path ' >&2
        printf 'components and print to stdout.\n' >&2
        printf '              Print help to stderr if -h given.\n' >&2
        return 1
    end

    # Make sure we have a proper readlink shell utility,
    # Mac shell utilities are old and crusty.
    set -l READLINK readlink
    type -q greadlink && set READLINK greadlink

    # Keep only path components that are existing directories, replaced
    # components by their canonical absolute paths. Relative components
    # are NOT intended to be on the trimmed path. Therefore, A relative
    # component that happens to exist is resolved against the current
    # working directory, freezing it to wherever the shell was when
    # pathtrim ran.
    #
    # Note: If relative components are desired (not recommended) add
    # them after calling pathtrim.
    set -f Dir
    set -f Dirs ()
    for Dir in $Path
        test -d "$Dir"
        and set -a Dirs ($READLINK -e "$Dir")
    end

    # Delete duplicate directories
    set Path ()
    set -f DirFound
    for Dir in $Dirs
        set -l Found no
        for DirFound in $Path
            test "$Dir" = "$DirFound"
            and set Found yes
            and break
        end
        test "$Found" = no
        and set -a Path "$Dir"
    end

    # Print cleaned up path to stdout
    printf %s\n $Path

    return 0

end
