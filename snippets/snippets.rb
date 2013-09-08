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


# Fluid-Header things
#####################################
snippet t(:fluidNamespace) do |snip|
  snip.trigger = "{namespace"
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
 
 
 
# Fluid-Render
#####################################
snippet t(:fluidRenderSection) do |snip|
  snip.trigger = "<f:render"
  snip.expansion = "<f:render section=\"${1:sectionname}\"></f:render>${2}"
end
snippet t(:fluidRenderPartial) do |snip|
  snip.trigger = "<f:render"
  snip.expansion = "<f:render partial=\"${1:sectionname}\"></f:render>${2}"
end
snippet t(:fluidRenderPartialWithArguments) do |snip|
  snip.trigger = "<f:render"
  snip.expansion = "<f:render partial=\"${1:sectionname}\" arguments=\"{${2:name}:${3:variable}}\"></f:render>${4}"
end



# Fluid-FlashMessages
#####################################
snippet t(:fluidFlashMessages) do |snip|
  snip.trigger = "<f:flashMessages"
  snip.expansion = "<f:flashMessages></f:flashMessages>${2}"
end

snippet t(:fluidFlashMessagesInDiv) do |snip|
  snip.trigger = "<f:flashMessages"
  snip.expansion = "<f:flashMessages renderMode=\"div\"></f:flashMessages>${2}"
end



# Fluid-Translate
#####################################
snippet t(:fluidTranslate) do |snip|
  snip.trigger = "<f:translate"
  snip.expansion = "<f:translate key=\"${1:key}\"></f:translate>${2}"
end

snippet t(:fluidTranslateWithArguments) do |snip|
  snip.trigger = "<f:translate"
  snip.expansion = "<f:translate key=\"${1:key}\" arguments=\"{0: ${2:var}}\"></f:translate>${3}"
end




# Fluid-Conditions
#####################################
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




# Fluid-Image
#####################################
snippet t(:fluidImage) do |snip|
  snip.trigger = "<f:image"
  snip.expansion = "<f:image src=\"${1:src}\" alt=\"{${1:alt}}\"></f:image>${3}"
end






# Fluid-Sonstiges
#####################################
snippet t(:fluidCount) do |snip|
  snip.trigger = "<f:count"
  snip.expansion = "<f:count subject=\"{${1:myarray}}\"></f:count>${2}"
end
snippet t(:fluidCountInline) do |snip|
  snip.trigger = "{f:count"
  snip.expansion = "{f:count(${1:myarray})} > 0}${2}"
end

snippet t(:fluidDebug) do |snip|
  snip.trigger = "<f:debug"
  snip.expansion = "<f:debug title=\"${1:title}\">{${2:object}}</f:debug>"
end

snippet t(:fluidComment) do |snip|
  snip.trigger = "<f:comment"
  snip.expansion = "<f:comment>${1:comment}</f:comment>"
end




# Fluid-For
#####################################
snippet t(:fluidFor) do |snip|
  snip.trigger = "<f:for"
  snip.expansion = "<f:for each=\"{${1:array}}\" as=\"${2:value}\" key=\"${3:value}\">\n</f:for>"
end
snippet t(:fluidForWithIteration) do |snip|
  snip.trigger = "<f:for"
  snip.expansion = "<f:for each=\"{${1:array}}\" as=\"${2:value}\" key=\"${3:value}\" iteration=\"${4:itemIteration}\">\n</f:for>"
end
snippet t(:fluidForWithIterationReverse) do |snip|
  snip.trigger = "<f:for"
  snip.expansion = "<f:for each=\"{${1:array}}\" as=\"${2:value}\" key=\"${3:value}\" iteration=\"${4:itemIteration}\" reverse=\"1\">\n</f:for>"
end




# Fluid-Link-Action
#####################################
snippet t(:fluidLinkAction) do |snip|
  snip.trigger = "<f:link.action"
  snip.expansion = "<f:link.action action=\"${1:action}\">${2:linktext}</f:link.action>"
end
snippet t(:fluidLinkActionWithController) do |snip|
  snip.trigger = "<f:link.action"
  snip.expansion = "<f:link.action action=\"${1:action}\" controller=\"${2:controller}\">${3:linktext}</f:link.action>"
end
snippet t(:fluidLinkActionWithControllerAndArguments) do |snip|
  snip.trigger = "<f:link.action"
  snip.expansion = "<f:link.action action=\"${1:action}\" controller=\"${2:controller}\" alt=\"{${3:name}:${4:variable}}\">${5:linktext}</f:link.action>"
end




# Fluid-Link-Page
#####################################
snippet t(:fluidLinkPage) do |snip|
  snip.trigger = "<f:link.page"
  snip.expansion = "<f:link.page pageUid=\"${1:pageUid}\">${2:linktext}</f:link.page>"
end
snippet t(:fluidLinkPageWithAdditionalParams) do |snip|
  snip.trigger = "<f:link.page"
  snip.expansion = "<f:link.page pageUid=\"${1:pageUid}\" additionalParams=\"{${2:name}:${3:variable}}\">${4:linktext}</f:link.page>"
end
snippet t(:fluidLinkPageWithPageType) do |snip|
  snip.trigger = "<f:link.page"
  snip.expansion = "<f:link.page pageUid=\"${1:pageUid}\" pageType=\"${2:pageType}\">${5:linktext}</f:link.page>"
end




# Fluid-Snippets
#####################################
snippet "Fluid flashMessages template" do |snip|
  snip.trigger = "f:flashMessages"
  snip.expansion  = "\t<div class=\"tx-coding-ms-base-flashMessages flashMessages\">\n"
  snip.expansion += "\t\t<f:flashMessages></f:flashMessages>\n"
  snip.expansion += "\t</div>\n"
end




