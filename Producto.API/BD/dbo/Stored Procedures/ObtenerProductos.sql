CREATE PROCEDURE ObtenerProductos 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     Categorias.Id AS Expr1, Categorias.Nombre AS Expr2, Categorias.*, Producto.*, SubCategorias.*
FROM            Categorias INNER JOIN
                         Producto ON Categorias.Id = Producto.Id INNER JOIN
                         SubCategorias ON Categorias.Id = SubCategorias.Id 
END