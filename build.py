import os
from logging import getLogger

log = getLogger(__name__)

templates = ["HEAD", "NAVBAR", "SCRIPT"]
script_dir = os.path.dirname(os.path.realpath(__file__))

html_files = [
    f
    for f in next(os.walk(os.path.join(script_dir, "templates")))[2]
    if f.endswith(".html")
]

for html_filename in html_files:
    with open(os.path.join(script_dir, "templates", html_filename)) as html_file:
        html_string = html_file.read()

    for template in templates:
        with open(
            os.path.join(script_dir, "templates", f"{template}.template")
        ) as template_file:
            template_payload = template_file.read()
            html_string = html_string.replace(
                f"<!-- {template}_TEMPLATE -->", template_payload
            )

    with open(os.path.join(script_dir, html_filename), "w") as output_html_file:
        log.info(f"Generating {html_filename}")
        output_html_file.write(html_string)
