# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::okta::deps()
#
#>
######################################################################
p6df::modules::okta::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
    RedCupIT/okta-claude-skill
  )
}

######################################################################
#<
#
# Function: p6df::modules::okta::home::symlinks()
#
#  Environment:	 HOME P6_DFZ_SRC_DIR
#>
######################################################################
p6df::modules::okta::home::symlinks() {

  p6_file_symlink "$P6_DFZ_SRC_DIR/RedCupIT/okta-claude-skill/skills/okta"                                                   "$HOME/.claude/skills/okta"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::okta::mcp()
#
#>
######################################################################
p6df::modules::okta::mcp() {

  p6_js_npm_global_install "okta-mcp-server"

  p6_return_void
}
