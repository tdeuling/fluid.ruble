#snippet t(:key_value) do |s|
#  s.key_binding = 'CONTROL+M2+;'
#  s.expansion = '${1:key}: ${2:value}$0'
#end

#snippet 'sdf' do |s|
#  s.key_binding = 'CONTROL+M2+;'
#  s.scope = 'source.yaml - string'
#  s.expansion = '${1:key}: ${2:value}$0'
#end


#snippet_category "my_category" do |category|
#  category.icon_path = "icons/my_category.png"
#end


# Fluid-Snippets
#####################################
snippet t(:fluidNamespace) do |snip|
  snip.trigger = "namespace"
  snip.expansion = "{namespace ${1:name} = ${1:viewHelper}}"
end
 
snippet t(:fluidLayout) do |snip|
  snip.trigger = "<f:layout"
  snip.expansion = "<f:layout name=\"${1:name}\"></f:layout>${2}"
end
 
snippet t(:fluidSection) do |snip|
  snip.trigger = "<f:section"
  snip.expansion = "<f:section name=\"${1:name}\">${2}</f:section>"
end

snippet t(:fluidFlashMessages) do |snip|
  snip.trigger = "<f:flashMessages"
  snip.expansion = "<f:flashMessages></f:flashMessages>${2}"
end

snippet t(:fluidTranslate) do |snip|
  snip.trigger = "<f:translate"
  snip.expansion = "<f:translate key=\"${1:key}\"></f:translate>${2}"
end

snippet t(:fluidIf) do |snip|
  snip.trigger = "<f:if"
  snip.expansion = "<f:if condition=\"{${1:condition}}\"></f:if>${2}"
end

snippet t(:fluidThen) do |snip|
  snip.trigger = "<f:then"
  snip.expansion = "<f:then></f:then>${1}"
end

snippet t(:fluidElse) do |snip|
  snip.trigger = "<f:else"
  snip.expansion = "<f:else></f:else>${1}"
end

snippet t(:fluidImage) do |snip|
  snip.trigger = "<f:image"
  snip.expansion = "<f:image src=\"${1:src}\" alt=\"{${1:alt}}\"></f:image>${3}"
end

snippet t(:fluidCount) do |snip|
  snip.trigger = "<f:count"
  snip.expansion = "<f:count subject=\"${1:myarray}\"></f:count>${2}"
end





# Fluid-Snippets
#####################################
snippet "Fluid flashMessages template" do |snip|
  snip.trigger = "f:flashMessages"
  snip.expansion  = "\t<div class=\"tx-coding-ms-base-flashMessages flashMessages\">\n"
  snip.expansion += "\t\t<f:flashMessages></f:flashMessages>\n"
  snip.expansion += "\t</div>\n"
end




