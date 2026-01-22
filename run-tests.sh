#!/bin/bash
echo " BookCart API Test Suite"
echo

# Configuration
COLLECTION_FILE="Bookcart-collection-tests.json"
REPORT_DIR="./test-reports"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
REPORT_FILE="$REPORT_DIR/bookcart_report_$TIMESTAMP.html"

# Create report directory if not exists
mkdir -p "$REPORT_DIR"

# Check if Newman is installed
if ! command -v newman &> /dev/null
then
    echo "Newman not found. Installing..."
    npm install -g newman newman-reporter-htmlextra
    echo "Newman installed successfully"
fi

echo
echo "Running API Test Suite..."
echo

# Run Newman
newman run "$COLLECTION_FILE" \
  --reporters cli,htmlextra \
  --reporter-htmlextra-export "$REPORT_FILE" \
  --reporter-htmlextra-title "BookCart API Test Report" \
  --reporter-htmlextra-showOnlyFails false \
  --reporter-htmlextra-darkTheme \
  --reporter-htmlextra-displayProgressBar \
  --timeout-request 10000 \
  --delay-request 100 \
  --color on

EXIT_CODE=$?

echo
if [ $EXIT_CODE -eq 0 ]; then
  echo " All tests completed successfully!"
else
  echo " Some tests failed. Check the report."
fi

echo
echo "Report generated at:"
echo "  $REPORT_FILE"
echo
