<html>
<head>
<title>Fitbit test</title>
<body>
    <?php
    $myfile = fopen("/Users/bojunhuang/Desktop/data_crawling_code/sleep/2019-06-06_test3/steps_summarytest3_2019-06-06.txt", "r") or die("Unable to open file!");
    echo fread($myfile,filesize("/Users/bojunhuang/Desktop/data_crawling_code/sleep/2019-06-06_test3/steps_summarytest3_2019-06-06.txt"));
    fclose($myfile);
    ?>
</body>
</html>