import json
import re
from collections import Counter

INPUT_FILE = "sample-auth0-users.json"

email_pattern = re.compile(r"^[^@\s]+@[^@\s]+\.[^@\s]+$")

with open(INPUT_FILE, "r", encoding="utf-8") as file:
    users = json.load(file)

errors = []

emails = [user.get("email", "").strip().lower() for user in users]
email_counts = Counter(emails)

for index, user in enumerate(users):
    email = user.get("email", "").strip().lower()

    if not email:
        errors.append(f"Record {index}: Missing email")
    elif not email_pattern.match(email):
        errors.append(f"Record {index}: Invalid email format: {email}")

    if email_counts[email] > 1:
        errors.append(f"Record {index}: Duplicate email: {email}")

print(f"Users checked: {len(users)}")

if errors:
    print("Validation failed:")
    for error in errors:
        print(f"- {error}")
else:
    print("Validation passed.")
