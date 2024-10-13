<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Compound Interest Calculator</title>

    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-blue-700">

<div>
    <div class="bg-white mx-auto text-center w-1/2 py-5 shadow-xl rounded-3xl my-96 max-w-2xl">
        <h2 class="text-4xl font-semibold border-b pb-2 mx-6">Compound Interest Calculator</h2>
        <!-- If the error attribute is present in the forwarded request, display it -->
        <h3 class="bg-red-300 text-red-900 font-semibold text-xl w-80 rounded-lg my-2 mx-auto">${error}</h3>
        <div>
            <form action="/" method="post">

                <div class="grid grid-cols-2 gap-4 my-5 mx-8">

                    <label for="principleamount" class="text-xl flex items-center">Principle Amount: <span class="text-gray-500 mx-1">$</span></label>
                    <input type="number" id="principleamount" name="principleamount" value="${principle}" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2">

                    <label for="interest" class="text-xl flex items-center">Interest Rate (Percentage):</label>
                    <input type="number" id="interest" name="interest" min="1" max="100" value="${interest}" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg  focus:outline-none focus:ring-2">

                    <label for="years" class="text-xl flex items-center"># of Years:</label>
                    <input type="number" id="years" name="years" min="1" value="${years}" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2">

                    <label for="compoundingperiod" class="text-xl flex items-center">Times per Year <span class="text-gray-500">(1 to 12)</span>:</label>
                    <input type="number" id="compoundingperiod" name="compoundingperiod" min="1" max="12" value="${compoundingPeriod}" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg  focus:outline-none focus:ring-2">

                </div>

                <button type="submit" class="bg-blue-300 text-xl font-semibold px-4 py-1 rounded-lg hover:bg-blue-800 hover:text-white">Calculate</button><br><br>

                <p class="text-3xl font-mono text-green-600">Result: ${result}</p>

            </form>
        </div>
    </div>
</div>


</body>
</html>
