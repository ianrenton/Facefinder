<?php
    $content = "";
    $dir = opendir('./photos');
    $staffArray = array();
    $sort = "";
    
    // Deal with URL parameters
    if (isset($_GET['sort'])) {
        $sort = $_GET['sort'];
    }
    
    // Populate array with image URL as key (this is immutable)
    // and staff name as value
    while($file = readdir($dir)) {
        if($file != '.' && $file != '..') {
            if (preg_match("/^[A-Za-z\'\-\s]+\.(?:jpg|gif|png)/", $file, $matches)) {                $staffArray[$matches[0]] = substr($matches[0], 0, -4);
            }
        }
    }
    closedir($dir);
    
    // Reverse name order and resort if doing a surname sort
    if ($sort=="surname") {
        foreach ($staffArray as $key => $value) {
            preg_match("/^([A-Za-z\'\-]+)\s([A-Za-z\'\-]+)/", $value, $matches);
            $newname = $matches[2] . ", " . $matches[1];
            $staffArray[$key] = $newname;
        }
        asort($staffArray);
    }
    
    // Render content for each item in the array
    $index=0;
    foreach ($staffArray as $key => $value) {
        if ($index%5 == 0) $content .= "<tr>";
        $content .= "<td>";
        $content .= "<img src=\"./photos/" . $key . "\" width=\"150px\"/>";
        $content .= " <p>" . $value . "</p>";
        $content .= "</td>";
        if ($index%5 == 4) $content .= "</tr>";
        $index++;
    }
    
    // Render sort order HTML
    $sortOrderHTML = "<a href=\"index.php\">First Name</a> | <a href=\"index.php?sort=surname\">Surname</a>";
?>


<html>
    <head>
        <title>Facefinder</title>
        <link type="text/css" rel="stylesheet" media="all" href="style.css" />
    </head>
    <body>
        <div id="titlebar">
            <h2>#Company_Name# Facefinder</h2>
        </div>
        <p class="toptext">
            This is the #Company_Name# Facefinder, a web page designed to help you match names to faces of the staff working at #Site#.
        </p>
        <p class="toptext">
            Select sort order: <?php echo $sortOrderHTML ?>
        </p>
        <table cellspacing="20">
            <?php
                echo $content;
             ?>
        </table>
