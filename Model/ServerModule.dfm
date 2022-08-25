object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'WebContas'
  AjaxTimeout = 60000
  DefaultImageFormat = cfPNG
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    'files/sweetalert2'
    'files/TweenMax.min.js'
    'TweenMax.min.js')
  CustomCSS.Strings = (
    ''
    '.CorPadraoBotao{'
    '  background-position: 20px 20px; '
    '  background-repeat: no-repeat;'
    '  '
    '}'
    ''
    '.mGridCliente .x-grid-column {'
    '    height: 25px;'
    '    line-height: 30px;'
    '    padding: 0 8px;'
    '    vertical-align: middle;'
    '    width: 100%;'
    '    text-align: center;'
    '    background-color: #4CAF50;'
    '    color: white;'#9
    '}'
    ''
    '.mGridCliente .x-grid-cell {'
    '    height: 20px !important;'
    '    line-height: 20px !important;'
    '    color: black;'
    '    border-collapse: collapse;'
    '    width: 100%;'#9
    '    background-color: #fff;'
    '}'
    ''
    '.mGridCliente .x-grid {'
    '    background-color: #4CAF50;'
    '}'
    ''
    '.btn-success2 {'
    '    color: #fff;'
    '    background-color: #ffc107;'
    '    border-color: #fff;'
    '}'
    ''
    '.btn-success:hover {'
    '    color: #fff;'
    '    background-color: #fd7e14;'
    '    border-color: #fff;'
    '}'
    ''
    ''
    '.x-tab-bar-default2 {'
    '    border-style: solid;'
    '    border-color: #ffc107;'
    '}'
    '.x-tab-bar-default-top2 {'
    
      '    background-image: -webkit-linear-gradient(top,#ffc107,#fffff' +
      'f);'
    '}')
  CustomMeta.Strings = (
    
      '<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/' +
      'bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0i' +
      'XCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" cross' +
      'origin="anonymous">'
    '')
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 309
  Width = 448
end
