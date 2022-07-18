<%@ page import="Clases.SociosDAO" %>
<%@ page import="Clases.Socios" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SOCIOS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<div class="container">
<h1 class="text-center">LISTADO DE SOCIOS</h1>
	<div class="row">
		<a class="btn btn-primary col-4 m-4" href="SociosController?accion=nuevo">Agregar Socio</a>
		<table class="table table-primary">
		<thead>
			<th>Id</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>DNI</th>
			<th>Mail</th>
			<th>Estado</th>
			<th class="text-center">Modificar</th>
			<th class="text-center">Eliminar</th>
		</thead>
		
		<%
		List<Socios> resultado=null;
		SociosDAO socio=new SociosDAO(); 
		resultado=socio.listarSocios();
		
		for(int i=0;i<resultado.size();i++)
		{
			String ruta="SociosController?accion=modificar&id="+resultado.get(i).getId_socio();
			String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getId_socio();
		
		%>
		<tr>
		<td><%=resultado.get(i).getId_socio()%></td>
		<td><%=resultado.get(i).getNombre()%></td>
		<td><%=resultado.get(i).getApellido()%></td>
		<td><%=resultado.get(i).getDni()%></td>
		<td><%=resultado.get(i).getMail()%></td>
		<td><%=resultado.get(i).getEstado()%></td>
		<td class="text-center"><a href=<%=ruta%>><i class="fa-solid fa-arrow-right-arrow-left"></i></a></td>
		<td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-trash-can"></i></a></td>
		</tr>
		
		<%
		}
		%>
		</table>
	</div>
</div>


</body>
</html>