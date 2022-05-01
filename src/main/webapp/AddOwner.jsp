<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
 
        /* Styling the Body element i.e. Color,
        Font, Alignment */
        body {
            
            font-family: Verdana;
            text-align: center;
        }
 
        /* Styling the Form (Color, Padding, Shadow) */
        form {
            background-color: #fff;
            max-width: 500px;
            margin: 50px auto;
            padding: 30px 20px;
            box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
        }
 
        /* Styling form-control Class */
        .form-control {
            text-align: left;
            margin-bottom: 25px;
        }
 
        /* Styling form-control Label */
        .form-control label {
            display: block;
            margin-bottom: 10px;
        }
 
        /* Styling form-control input,
        select, textarea */
        .form-control input,
        .form-control select,
        .form-control textarea {
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            padding: 10px;
            display: block;
            width: 95%;
        }
 
        /* Styling form-control Radio
        button and Checkbox */
        .form-control input[type="radio"],
        .form-control input[type="checkbox"] {
            display: inline-block;
            width: auto;
        }
 
        /* Styling Button */
        button {
            background-color: #28242c;
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            font-size: 19px;
            display: block;
            width: 100%;
            margin-top: 50px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<form id="form" method="post">
 
        <!-- Details -->
        <div class="form-control">
            <label for="age" id="label-age">
                Owner ID
            </label>
 
            <!-- Input Type Text -->
            <input type="number" id="age" name="number" placeholder="Enter Owner ID "required="required" />
        </div>
        <!-- Multi-line Text Input Control -->
        <button type="submit" value="submit"style="color:white;">
            Submit
        </button>
    </form>


</body>
</html>