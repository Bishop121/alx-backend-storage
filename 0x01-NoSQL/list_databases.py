#!/usr/bin/env python3
# my comment
"""Script to list all databases in MongoDB using PyMongo."""

from pymongo import MongoClient

def list_databases():
    """List all databases in the MongoDB server."""
    client = MongoClient('mongodb://127.0.0.1:27017/')
    databases = client.list_database_names()
    
    print("Databases:")
    for db in databases:
        print(f"- {db}")

if __name__ == "__main__":
    list_databases()

