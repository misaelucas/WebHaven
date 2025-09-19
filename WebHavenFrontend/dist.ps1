# Run this from WebHavenFrontend directory

# Change to script directory
Set-Location $PSScriptRoot

# Build frontend
yarn run build

# Remove old dist if it exists
$distPath = "..\WebHavenResources\dist"
if (Test-Path $distPath) {
    Remove-Item $distPath -Recurse -Force
}

# Copy new dist
Copy-Item "dist" $distPath -Recurse
