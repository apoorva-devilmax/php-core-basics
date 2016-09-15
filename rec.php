<?php

$conn = mysqli_connect('localhost', 'root', 'ap', 'rnd');

$relArr = myRecursive($conn);
showArray($relArr);

mysqli_close($conn);


function myRecursive($conn, $id = 0, $resultArr = array()){
    $sql = "SELECT * FROM t_node WHERE parent_id = $id";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        // output data of each row
        while($row = mysqli_fetch_assoc($result)) {
            $resultArr[$row["id"]] = array(
                'id' => $row["id"],
                'name' => $row["label"],
                'parent' => $row["parent_id"]
            );
            //$resultArr[]['name'] = $row[];
            $resultArr[$row["id"]]['children'] = myRecursive($conn, $row["id"]);
        }
    }
    return $resultArr;
}

function showArray($arr){
    echo '<pre>';
    print_r($arr);
    echo '</pre>';
}