module CategoriesHelper
  def find_all_subcategories(category)
      if category.children.size > 0
        ret = '<ol>'
        category.children.each { |subcat| 
          if subcat.children.size > 0
            ret += '<li id="list_' + subcat.id.to_s + '"><div> <span class="handle">| Handle |</span> '
            ret += link_to h(subcat.name)
            ret += '</div>'
            ret += find_all_subcategories(subcat)
            ret += '</li>'
          else
            ret += '<li id="list_' + subcat.id.to_s + '"><div><span class="handle">| Handle |</span> '
            ret += link_to(subcat.name, category) 
            ret += '</div></li>'
          end
          }
        ret += '</ol>'
      end
    end
end




