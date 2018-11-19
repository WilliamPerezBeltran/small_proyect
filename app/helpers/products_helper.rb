module ProductsHelper
	def form_title
		@product.new_record? ? 'Nuevo producto' : 'Editar Producto'
	end
end
