package main

import (
    "net/http"
    "github.com/gin-gonic/gin"
)

func main() {
    r := gin.Default()
    
    // Health check endpoint
    r.GET("/health", func(c *gin.Context) {
        c.JSON(http.StatusOK, gin.H{"status": "healthy"})
    })
    
    // Simple GET endpoint
    r.GET("/hello", func(c *gin.Context) {
        c.JSON(http.StatusOK, gin.H{"message": "Hello, World!"})
    })
    
    // Simple POST endpoint
    r.POST("/echo", func(c *gin.Context) {
        var input struct {
            Message string `json:"message"`
        }
        
        if c.ShouldBindJSON(&input) == nil {
            c.JSON(http.StatusOK, gin.H{"received": input.Message})
        } else {
            c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid input"})
        }
    })
    
    r.Run(":8080")
}