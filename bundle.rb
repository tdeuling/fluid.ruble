require 'ruble'

bundle do |bundle|
  bundle.author = 'Thomas Deuling'
  bundle.contact_email_rot_13 = 'glcb3@pbqvat.zf'
  bundle.display_name = t(:bundle_name)
  bundle.description =  <<END
<a href="http://wiki.typo3.org/Fluid">Fluid</a> is a template engine used by Typo3 and Flow3
END
  increase_indent = /^\s*.*(:|-) ?(&\w+)?(\{[^}"']*|\([^)"']*)?$/
  decrease_indent = /^\s+\}$/
  bundle.indent['source.yaml'] = increase_indent, decrease_indent

  # Set up folding. Folding is now done in Java code for this language  
  # start_folding = /^[^#]\s*.*:(\s*\[?| &.+)?$/
  # end_folding = /^\s*$|^\s*\}|^\s*\]|^\s*\)/
  # bundle.folding['source.yaml'] = start_folding, end_folding

  bundle.menu t(:bundle_name) do |main_menu|
    main_menu.command t(:key_value)
    main_menu.command t(:add_list_item)
    main_menu.separator
    main_menu.command t(:sort_keys_alphabetically)
    main_menu.command t(:convert_to_ruby)
    main_menu.separator
    main_menu.command t(:cheat_sheet)
  end
end

# Special ENV vars
#env "source.yaml" do |e|
#  e['TM_COMMENT_START'] = "# "
#  e.delete('TM_COMMENT_END')
#  e.delete('TM_COMMENT_START_2')
#  e.delete('TM_COMMENT_END_2')
#  e.delete('TM_COMMENT_DISABLE_INDENT')
#end
