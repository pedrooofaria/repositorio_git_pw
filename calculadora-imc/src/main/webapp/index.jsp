<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Exemplo JSP (Java Server Pages) - Maior Menor</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>
  <body>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="panel-heading">
              <h3 class="panel-title">De menor ou De maior?</h3>
            </div>
            <div class="panel-body">
            <form>
                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="Peso" name="peso" type="text">
                        <br>
                        <input class="form-control" placeholder="Altura" name="altura" type="text">
                    </div>
                    <button class="btn btn-sm btn-success">Calcular</a>
                </fieldset>
            </form>
            <br><br>
             <!-- Scriptlet. Código Java no HTML. -->
             <%
              String s_peso = request.getParameter("peso");
              String s_altura = request.getParameter("altura");
              double imc;

              if((s_peso != null) && (s_altura != null)){
                  double d_peso = Double.parseDouble(s_peso);
                  double d_altura = Double.parseDouble(s_altura);

                  imc = peso / (altura * altura);
              }else{
                if(imc <= 18,5){
                  %>
                  Abaixo do peso normal!
                  <%
                }else{
                  if(imc <= 25){
                    %>
                    Peso normal!
                    <%
                  }else{
                    if(imc <= 30){
                      %>
                      Acima do peso normal!
                      <%
                    }else{
                      %>
                      Obesidade!
                      <%
                    }
                  }
                }
              }
             %>
        </div>
    </div>
  </body>
</html>