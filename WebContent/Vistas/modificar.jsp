<%@page import="Clases.SociosDAO"%>
<%@page import="Clases.Socios"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class="container">
		<h1 class="text-center">Modificar Socio</h1>
		
		<div class="row">
				<%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);				
				Socios resultado=null;
				SociosDAO socio=new SociosDAO();
				resultado=socio.mostrarSocio(mid);				
				%>
		
		
		
			<form class="p-5" action="SociosController?accion=actualizar" method="post">
			
			<div class="mb-3">				
				<input type="hidden"  class="form-control" id="id" name="id"  value=<%=resultado.getId_socio() %> >
			</div>
			
			<div class="mb-3">
				<label for="nombre" class="form-label">NOMBRE</label>
				<input type="text" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre()%>>
			</div>
			
			<div class="mb-3">
				<label for="apellido" class="form-label">APELLIDO</label>
				<input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido()%>>
			</div>
			
			<div class="mb-3">
				<label for="dni" class="form-label">DNI</label>
				<input type="number" class="form-control" id="dni" name="dni" value=<%=resultado.getDni()%>>
			</div>
			
			<div class="mb-3">
				<label for="mail" class="form-label">MAIL</label>
				<input type="text" class="form-control" id="mail" name="mail" value=<%=resultado.getMail()%>>
			</div>
			
		
			<button type="submit" class="btn btn-primary">ACTUALIZAR</button>
			</form>
		</div>
	
	</div>
</body>
</html>