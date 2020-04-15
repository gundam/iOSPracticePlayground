func uniquePaths(_ m: Int, _ n: Int, _ obstacleGrid: [[Int]]) -> Int {
    var dp: [[Int]] = obstacleGrid
    for i in 0...m-1 {
        for n in 0...n-1 {
            if i == 0 && j == 0 {
                if obstacleGrid[i][j] == 1 {
                    dp[i][j] = 0
                }
                else{
                    dp[i][j] = 1
                }
            }
            else if i > 0 && j == 0{
                if obstacleGrid[i][j] == 1 {
                    dp[i][j] = 0
                }
                else{
                    dp[i][j] = 1
                }
            }
            else if i == 0 && j > 0{
                if obstacleGrid[i][j] == 1 {
                    dp[i][j] = 0
                }
                else{
                    dp[i][j] = 1
                }
                
            }
            else{
                if obstacleGrid[i][j] == 1 {
                    dp[i][j] = 0
                }
                else{
                    dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
                }
                
            }
        }
    }
    
    return dp[m - 1][n - 1]
}


func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
    let m = obstacleGrid.count
    let n = obstacleGrid[0].count
    uniquePaths(m, n, obstacleGrid)
    
}
