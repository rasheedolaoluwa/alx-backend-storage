#!/usr/bin/env python3
""" MongoDB Operations with Python using pymongo. """


def insert_school(mongo_collection, **kwargs):
    """ Insert a new document into a collection using kwargs. """
    return mongo_collection.insert_one(kwargs)
