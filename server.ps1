$root = [System.IO.Path]::GetFullPath($PSScriptRoot)
$port = 8765
$mime = @{ '.html' = 'text/html; charset=utf-8'; '.avif' = 'image/avif'; '.js' = 'text/javascript'; '.png' = 'image/png' }
$l = New-Object System.Net.HttpListener
$l.Prefixes.Add("http://localhost:$port/")
try { $l.Start() } catch { Write-Host "Could not start on port $port. Close any other copy of this window and try again."; Read-Host "Press Enter"; exit 1 }
Write-Host "Solar system running at http://localhost:$port/  (close this window to stop)"
Start-Process "http://localhost:$port/"
while ($l.IsListening) {
  $c = $l.GetContext()
  try {
    $p = [Uri]::UnescapeDataString($c.Request.Url.AbsolutePath.TrimStart('/'))
    if ($p -eq '') { $p = 'index.html' }
    $f = [System.IO.Path]::GetFullPath((Join-Path $root $p))
    if ($f.StartsWith($root) -and (Test-Path -LiteralPath $f -PathType Leaf)) {
      $b = [System.IO.File]::ReadAllBytes($f)
      $ext = [System.IO.Path]::GetExtension($f).ToLower()
      $c.Response.ContentType = if ($mime.ContainsKey($ext)) { $mime[$ext] } else { 'application/octet-stream' }
      $c.Response.ContentLength64 = $b.Length
      $c.Response.OutputStream.Write($b, 0, $b.Length)
    } else { $c.Response.StatusCode = 404 }
  } catch { }
  try { $c.Response.Close() } catch { }
}
