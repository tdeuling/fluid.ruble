snippet t(:key_value) do |s|
  s.key_binding = 'CONTROL+M2+;'
  s.scope = 'source.yaml - string'
  s.expansion = '${1:key}: ${2:value}$0'
end

snippet 'sdf' do |s|
  s.key_binding = 'CONTROL+M2+;'
  s.scope = 'source.yaml - string'
  s.expansion = '${1:key}: ${2:value}$0'
end


snippet_category "my_category" do |category|
  category.icon_path = "icons/my_category.png"
end
 
snippet "My Snippet" do |snip|
  snip.trigger = "foo"
  snip.expansion = "my_categorized_snippet"
  snip.category = "my_category"
end