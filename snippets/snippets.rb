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
  snip.category = "Fluid Inline"
end
 
snippet t(:fluidLayout) do |snip|
  snip.trigger = "<f:layout"
  snip.expansion = "<f:layout name=\"${1:name}\"></f:layout>$0"
  snip.category = "Fluid Tag"
end
 
snippet t(:fluidSection) do |snip|
  snip.trigger = "<f:section"
  snip.expansion = "<f:section name=\"${1:name}\">$0</f:section>"
  snip.category = "Fluid Tag"
end
 
 
 
# Fluid-Render
#####################################
snippet t(:fluidRenderSection) do |snip|
  snip.trigger = "<f:render"
  snip.expansion = "<f:render section=\"${1:sectionname}\"></f:render>$0"
  snip.category = "Fluid Tag"
end
snippet t(:fluidRenderPartial) do |snip|
  snip.trigger = "<f:render"
  snip.expansion = "<f:render partial=\"${1:sectionname}\"></f:render>$0"
  snip.category = "Fluid Tag"
end
snippet t(:fluidRenderPartialWithArguments) do |snip|
  snip.trigger = "<f:render"
  snip.expansion = "<f:render partial=\"${1:sectionname}\" arguments=\"{${2:name}:${3:variable}}\"></f:render>$0"
  snip.category = "Fluid Tag"
end



# Fluid-FlashMessages
#####################################
snippet t(:fluidFlashMessages) do |snip|
  snip.trigger = "<f:flashMessages"
  snip.expansion = "<f:flashMessages></f:flashMessages>$0"
  snip.category = "Fluid Tag"
end

snippet t(:fluidFlashMessagesInDiv) do |snip|
  snip.trigger = "<f:flashMessages"
  snip.expansion = "<f:flashMessages renderMode=\"div\"></f:flashMessages>$0"
  snip.category = "Fluid Tag"
end



# Fluid-Translate
#####################################
snippet t(:fluidTranslate) do |snip|
  snip.trigger = "<f:translate"
  snip.expansion = "<f:translate key=\"${1:key}\"></f:translate>$0"
  snip.category = "Fluid Tag"
end

snippet t(:fluidTranslateWithArguments) do |snip|
  snip.trigger = "<f:translate"
  snip.expansion = "<f:translate key=\"${1:key}\" arguments=\"{0: ${2:var}}\"></f:translate>$0"
  snip.category = "Fluid Tag"
end




# Fluid-Conditions
#####################################
snippet t(:fluidIf) do |snip|
  snip.trigger = "<f:if"
  snip.expansion = "<f:if condition=\"{${1:condition}}\">$0</f:if>"
  snip.category = "Fluid Tag"
end
snippet t(:fluidIfCount) do |snip|
  snip.trigger = "<f:if"
  snip.expansion = "<f:if condition=\"{f:count(subject: ${1:product.images})}\">$0</f:if>"
  snip.category = "Fluid Tag"
end


snippet t(:fluidThen) do |snip|
  snip.trigger = "<f:then"
  snip.expansion = "<f:then>$0</f:then>"
  snip.category = "Fluid Tag"
end
snippet t(:fluidElse) do |snip|
  snip.trigger = "<f:else"
  snip.expansion = "<f:else>$0</f:else>"
  snip.category = "Fluid Tag"
end

snippet t(:fluidIfIterationIsOdd) do |snip|
  snip.trigger = "<f:if"
  snip.expansion = "<f:if condition=\"{itemIteration.isOdd}\">$0</f:if>"
  snip.category = "Fluid Tag"
end
snippet t(:fluidIfIterationIsEven) do |snip|
  snip.trigger = "<f:if"
  snip.expansion = "<f:if condition=\"{itemIteration.isEven}\">$0</f:if>"
  snip.category = "Fluid Tag"
end
snippet t(:fluidIfIterationIsFirst) do |snip|
  snip.trigger = "<f:if"
  snip.expansion = "<f:if condition=\"{itemIteration.isFirst}\">$0</f:if>"
  snip.category = "Fluid Tag"
end
snippet t(:fluidIfIterationIsLast) do |snip|
  snip.trigger = "<f:if"
  snip.expansion = "<f:if condition=\"{itemIteration.isLast}\">$0</f:if>"
  snip.category = "Fluid Tag"
end
# <f:if condition="{v:math.sum(a:itemIteration.cycle, fail: 1, b: '3')} % 4">
snippet t(:fluidIfIterationModulo) do |snip|
  snip.trigger = "<f:if"
  snip.expansion = "<f:if condition=\"{itemIteration.cycle} % ${1:number}\">$0</f:if>"
  snip.category = "Fluid Tag"
end




# Fluid-Image
#####################################
snippet t(:fluidImage) do |snip|
  snip.trigger = "<f:image"
  snip.expansion = "<f:image src=\"${1:src}\" alt=\"{${1:alt}}\"></f:image>$0"
  snip.category = "Fluid Tag"
end






# Fluid-Sonstiges
#####################################
snippet t(:fluidCount) do |snip|
  snip.trigger = "<f:count"
  snip.expansion = "<f:count subject=\"{${1:myarray}}\"></f:count>$0"
  snip.category = "Fluid Tag"
end
snippet t(:fluidCountInline) do |snip|
  snip.trigger = "{f:count"
  snip.expansion = "{f:count(${1:myarray})} > 0}$0"
  snip.category = "Fluid Inline"
end

snippet t(:fluidDebug) do |snip|
  snip.trigger = "<f:debug"
  snip.expansion = "<f:debug title=\"${1:title}\">{${2:object}}</f:debug>$0"
  snip.category = "Fluid Tag"
end
snippet t(:fluidDebugInline) do |snip|
  snip.trigger = "{f:debug"
  snip.expansion = "{${1:object} -> f:debug(title: '${2:title}')}$0"
  snip.category = "Fluid Inline"
end
snippet t(:fluidDebugAll) do |snip|
  snip.trigger = "<f:debug"
  snip.expansion = "<f:debug>{_all}</f:debug>$0"
  snip.category = "Fluid Tag"
end


snippet t(:fluidComment) do |snip|
  snip.trigger = "<f:comment"
  snip.expansion = "<f:comment>\n"
  snip.expansion+= "\tDate: `date`\n"
  snip.expansion+= "</f:comment>\n$0"
  snip.category = "Fluid Tag"
  snip.tags = ['TYPO3','Fluid']
  snip.icon_path = "icons/my_map_icon.png"
  snip.description = "Creates a map object and adds the following annotations: current location, paris, and ontario"
end




# Fluid-For
#####################################
snippet t(:fluidFor) do |snip|
  snip.trigger = "<f:for"
  snip.expansion = "<f:for each=\"{${1:array}}\" as=\"${2:value}\" key=\"${3:value}\">$0\n</f:for>"
  snip.category = "Fluid Tag"
end
snippet t(:fluidForWithIteration) do |snip|
  snip.trigger = "<f:for"
  snip.expansion = "<f:for each=\"{${1:array}}\" as=\"${2:value}\" key=\"${3:value}\" iteration=\"${4:itemIteration}\">$0\n</f:for>"
  snip.category = "Fluid Tag"
end
snippet t(:fluidForWithIterationReverse) do |snip|
  snip.trigger = "<f:for"
  snip.expansion = "<f:for each=\"{${1:array}}\" as=\"${2:value}\" key=\"${3:value}\" iteration=\"${4:itemIteration}\" reverse=\"1\">$0\n</f:for>"
  snip.category = "Fluid Tag"
end




# Fluid-Link-Action
#####################################
snippet t(:fluidLinkAction) do |snip|
  snip.trigger = "<f:link.action"
  snip.expansion = "<f:link.action action=\"${1:action}\">${2:linktext}</f:link.action>$0"
  snip.category = "Fluid Tag"
end
snippet t(:fluidLinkActionWithController) do |snip|
  snip.trigger = "<f:link.action"
  snip.expansion = "<f:link.action action=\"${1:action}\" controller=\"${2:controller}\">${3:linktext}</f:link.action>$0"
  snip.category = "Fluid Tag"
end
snippet t(:fluidLinkActionWithControllerAndArguments) do |snip|
  snip.trigger = "<f:link.action"
  snip.expansion = "<f:link.action action=\"${1:action}\" controller=\"${2:controller}\" alt=\"{${3:name}:${4:variable}}\">${5:linktext}</f:link.action>$0"
  snip.category = "Fluid Tag"
end




# Fluid-Link-Page
#####################################
snippet t(:fluidLinkPage) do |snip|
  snip.trigger = "<f:link.page"
  snip.expansion = "<f:link.page pageUid=\"${1:pageUid}\">${2:linktext}</f:link.page>$0"
  snip.category = "Fluid Tag"
end
snippet t(:fluidLinkPageWithAdditionalParams) do |snip|
  snip.trigger = "<f:link.page"
  snip.expansion = "<f:link.page pageUid=\"${1:pageUid}\" additionalParams=\"{${2:name}:${3:variable}}\">${4:linktext}</f:link.page>$0"
  snip.category = "Fluid Tag"
end
snippet t(:fluidLinkPageWithPageType) do |snip|
  snip.trigger = "<f:link.page"
  snip.expansion = "<f:link.page pageUid=\"${1:pageUid}\" pageType=\"${2:pageType}\">${5:linktext}</f:link.page>$0"
  snip.category = "Fluid Tag"
end




# Fluid-Snippets
#####################################
snippet t(:fluidTemplateFlashMessage) do |snip|
  snip.trigger = "f:flashMessages"
  snip.expansion  = "\t<div class=\"tx-coding-ms-base-flashMessages flashMessages\">\n"
  snip.expansion += "\t\t<f:flashMessages></f:flashMessages>\n"
  snip.expansion += "\t</div>\n$0"
  snip.category = "Fluid Code-Snippets"
end

snippet t(:fluidTemplateIfIterationModulo) do |snip|
  snip.trigger = "f:if"
  snip.expansion  = "\t<f:if condition=\"{itemIteration.cycle} % ${1:number}\">\n"
  snip.expansion += "\t\t<f:then><!-- when its not modulo --></f:then>\n"
  snip.expansion += "\t\t<f:else>$0</f:else>\n"
  snip.expansion += "\t</f:if>\n"
  snip.category = "Fluid Code-Snippets"
end




