cask 'djview' do
  version '4.10.6'
  sha256 '9b98acbd420eb10b3020b5d6e4ce144fe214461103a263c1d900f61797e92ef8'

  url "https://downloads.sourceforge.net/djvu/DjVuLibre-3.5.27%2BDjView-#{version}-intel64.dmg"
  appcast 'https://sourceforge.net/projects/djvu/rss',
          checkpoint: 'cf1aa92be5131c0e7c88841c5d3102a60f9d2ee4e6bb2cf6c858afa273068339'
  name 'DjView'
  homepage 'http://djvu.sourceforge.net/'
  license :gpl

  app 'DjView.app'
  binary "#{appdir}/#{app}/Contents/MacOS/any2djvu"
  binary "#{appdir}/#{app}/Contents/MacOS/bzz"
  binary "#{appdir}/#{app}/Contents/MacOS/c44"
  binary "#{appdir}/#{app}/Contents/MacOS/cjb2"
  binary "#{appdir}/#{app}/Contents/MacOS/cpaldjvu"
  binary "#{appdir}/#{app}/Contents/MacOS/csepdjvu"
  binary "#{appdir}/#{app}/Contents/MacOS/ddjvu"
  binary "#{appdir}/#{app}/Contents/MacOS/djview"
  binary "#{appdir}/#{app}/Contents/MacOS/djvm"
  binary "#{appdir}/#{app}/Contents/MacOS/djvmcvt"
  binary "#{appdir}/#{app}/Contents/MacOS/djvudigital"
  binary "#{appdir}/#{app}/Contents/MacOS/djvudump"
  binary "#{appdir}/#{app}/Contents/MacOS/djvuextract"
  binary "#{appdir}/#{app}/Contents/MacOS/djvumake"
  binary "#{appdir}/#{app}/Contents/MacOS/djvups"
  binary "#{appdir}/#{app}/Contents/MacOS/djvused"
  binary "#{appdir}/#{app}/Contents/MacOS/djvuserve"
  binary "#{appdir}/#{app}/Contents/MacOS/djvutoxml"
  binary "#{appdir}/#{app}/Contents/MacOS/djvutxt"
  binary "#{appdir}/#{app}/Contents/MacOS/djvuxmlparser"

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.djvu.djview.sfl',
                '~/Library/Preferences/org.djvu.DjView.plist',
                '~/Library/Saved Application State/org.djvu.DjView.savedState',
              ]
end
