<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Simple To-Do List</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #149aac, #ffffff);
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
    }

    h1 {
      color: navy;
      margin-bottom: 22px;
    }

    .todo-container {
      background: #fff;
      border-radius: 15px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.2);
      padding: 20px;
      width: 320px;
      text-align: center;
    }

    input {
      width: 70%;
      padding: 8px;
      border: 2px solid #149aac;
      border-radius: 5px;
      outline: none;
    }

    button {
      padding: 8px 12px;
      background-color: #149aac;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-left: 5px;
    }

    button:hover {
      background-color: #117e8a;
    }

    ul {
      list-style-type: none;
      padding: 0;
      margin-top: 20px;
    }

    li {
      background-color: #f0f8fa;
      padding: 10px;
      border-radius: 8px;
      margin-bottom: 8px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    li span {
      cursor: pointer;
      color: red;
      font-weight: bold;
    }

    li span:hover {
      color: darkred;
    }
  </style>
</head>
<body>
  <h1>My To-Do List</h1>
  <div class="todo-container">
    <input type="text" id="taskInput" placeholder="Enter a task">
    <button onclick="addTask()">Add</button>
    <ul id="taskList"></ul>
  </div>

  <script>
    function addTask() {
      const input = document.getElementById("taskInput");
      const taskText = input.value.trim();
      if (taskText === "") {
        alert("Please enter a task!");
        return;
      }

      const li = document.createElement("li");
      li.innerHTML = `${taskText} <span onclick="deleteTask(this)">×</span>`;
      document.getElementById("taskList").appendChild(li);
      input.value = "";
    }

    function deleteTask(element) {
      element.parentElement.remove();
    }
  </script>
</body>
</html>
