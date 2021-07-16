FROM nextgenhealthcare/connect:3.11

# Copy FHIR extension into container
COPY extensions/fhir-3.11.0.b1424.zip /opt/scratch/

# Unzip into `/opt/connect/extensions`. Mirth loads extensions from there.
#
# Alternatively we could put the ZIP file in `/opt/connect/custom-extensions`,
# but then Mirth would have to unzip it on every startup.
RUN unzip /opt/scratch/fhir-3.11.0.b1424.zip -d /opt/connect/extensions

# No entrypoint specified, so the entrypoint from the base image will be used.
