<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .feedback-container {
            max-width: 600px;
            margin: 60px auto;
            padding: 30px;
            background-color: #fffff;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
        }
        .feedback-container h2 {
            margin-bottom: 25px;
        }
        textarea.form-control {
            resize: none;
        }
    </style>
</head>
<body>

<div class="container feedback-container">
    <h2 class="text-center">Feedback Form</h2>
    
    <form action="Feedback" method="post">
        <div class="mb-3">
            <label for="feedback" class="form-label">Your Feedback</label>
            <textarea name="feedback" id="feedback" rows="5" class="form-control" required placeholder="Write your thoughts here..."></textarea>
        </div>
        <div class="d-grid">
            <button type="submit" class="btn btn-primary">Submit Feedback</button>
        </div>
    </form>
</div>

</body>
</html>
