module ProductsHelper
	# include ActionView::Helpers::UrlHelper

	def isActive(name, typeOf, currentTypeOf)
	  if typeOf == currentTypeOf
	    link_to name, {:controller => "products", :type => typeOf}, :class => "active"
	  else 
	  	link_to name, {:controller => "products", :type => typeOf}
	  end
	end

end
