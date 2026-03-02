param(
  [Parameter(Mandatory = $true)]
  [string[]]$InputFiles,

  [Parameter(Mandatory = $true)]
  [string]$OutPdfDir,

  [Parameter(Mandatory = $true)]
  [string]$OutTxtDir,

  [switch]$ForceOcr,
  [switch]$InvalidateSignature
)

$files = $InputFiles

New-Item -ItemType Directory -Force -Path $outPdfDir | Out-Null
New-Item -ItemType Directory -Force -Path $outTxtDir | Out-Null

foreach ($f in $files) {
  if (-not (Test-Path -LiteralPath $f -PathType Leaf)) {
    Write-Error "Input file not found: $f"
    continue
  }

  $nameNoExt = [System.IO.Path]::GetFileNameWithoutExtension($f)
  $outPdf = Join-Path $outPdfDir ($nameNoExt + "_ocr.pdf")
  $outTxt = Join-Path $outTxtDir ($nameNoExt + ".txt")

  # Always OCR a temp copy so the original input file is never touched.
  $tempInput = Join-Path ([System.IO.Path]::GetTempPath()) ([System.Guid]::NewGuid().ToString() + ".pdf")
  Copy-Item -LiteralPath $f -Destination $tempInput -Force

  try {
    $ocrArgs = @(
      '--rotate-pages',
      '--deskew',
      '--output-type', 'pdf',
      '--sidecar', $outTxt
    )

    if ($ForceOcr) {
      $ocrArgs += '--force-ocr'
    }
    else {
      $ocrArgs += '--skip-text'
    }

    if ($InvalidateSignature) {
      $ocrArgs += '--invalidate-digital-signatures'
    }

    $ocrArgs += @($tempInput, $outPdf)

    & ocrmypdf @ocrArgs
  }
  finally {
    if (Test-Path -LiteralPath $tempInput) {
      Remove-Item -LiteralPath $tempInput -Force -ErrorAction SilentlyContinue
    }
  }
}
