from fastapi import FastAPI
from pydantic import BaseModel
from typing import Optional

app = FastAPI(title="AI Generated Code Example", version="1.0.0")

# Define a data model
class Item(BaseModel):
    name: str
    price: float
    description: Optional[str] = None

# Health check endpoint
@app.get("/health")
async def health_check():
    return {"status": "healthy"}

# GET endpoint
@app.get("/items/{item_id}")
async def read_item(item_id: int):
    return {"item_id": item_id}

# POST endpoint with validation
@app.post("/items")
async def create_item(item: Item):
    return {"message": "Item created", "item": item}

# Example of error handling
@app.get("/error")
async def error_example():
    raise Exception("This is an example error")