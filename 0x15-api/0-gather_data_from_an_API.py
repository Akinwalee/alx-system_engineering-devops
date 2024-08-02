#!/usr/bin/python3
"""
Python scrpts to gather data from an API.
This script gets an employee detials from the API
and display as specified.
"""
import requests
import sys


if __name__ == "__main__":
    employee_id = int(sys.argv[1])
    employee = requests.get(
            "https://jsonplaceholder.typicode.com/users/{}"
            .format(employee_id)).json()
    tasks = requests.get(
            "https://jsonplaceholder.typicode.com/users/{}/todos"
            .format(employee_id)).json()

    count = 0
    complete = []
    name = employee["name"]

    for task in tasks:
        if task["completed"] is True:
            count += 1
            complete.append(task["title"])

    print(f"Employee {name} is done with tasks({count}/{len(tasks)}):")
    for title in complete:
        print(f"\t {title}")
