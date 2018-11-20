Feature: Testing the update scenario of beta releases

  Scenario: Updating an outdated ownCloud 8.2.5 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.4 will receive the latest compatible release
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel with PHP 5.4
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel without sending PHP version
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an outdated Nextcloud 10.0.1 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.1.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.13RC2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    mUtKIwOEfImiNl+dRgvMI7to++Kd9NAoxEtTk+zTx4HxcJozw3sFUl5hEiCKOSJB
    kyMGJEn3HnlYIE1baspmQGMZMBNzBDWjb4o2r//NgEkjEKlMHM1kEr5RHaTEupGH
    3Ih7uAxlpY1MSiiaZbCcnvN+cAMzDDOYut4+b6DHpk/CQQb0ETXkFXN9MjH3u+Uu
    e1XkjyfAL5nj7LFSogz9LXOqnhjZyZ9CHikqhdjv5u/VJXDRpt3cmLiAHEA+WbIv
    r7A5kxYnC0M1SGnCIVvXLtZHKd0C2Y1wptyPB7t3MGZicJwkgZYkqZ1S0zRUpFqj
    IXyGxqyzN0stYhJ4GUdbPQ==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel without an mtime
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.13RC2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    mUtKIwOEfImiNl+dRgvMI7to++Kd9NAoxEtTk+zTx4HxcJozw3sFUl5hEiCKOSJB
    kyMGJEn3HnlYIE1baspmQGMZMBNzBDWjb4o2r//NgEkjEKlMHM1kEr5RHaTEupGH
    3Ih7uAxlpY1MSiiaZbCcnvN+cAMzDDOYut4+b6DHpk/CQQb0ETXkFXN9MjH3u+Uu
    e1XkjyfAL5nj7LFSogz9LXOqnhjZyZ9CHikqhdjv5u/VJXDRpt3cmLiAHEA+WbIv
    r7A5kxYnC0M1SGnCIVvXLtZHKd0C2Y1wptyPB7t3MGZicJwkgZYkqZ1S0zRUpFqj
    IXyGxqyzN0stYhJ4GUdbPQ==
    """

  Scenario: Updating an outdated Nextcloud 12.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.15"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.8.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.8RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    dAxk6j5jXpU5kIKFIeJV9iszF5jzkr6b7MJiaR/JVDzwBmAAn1owd/UhwTPQ+Oux
    2g55fNdciuZtSMi+dwD+kNWcZS2ZRwvNL9gkXHuNMSpnZ8aAU50gE2tw8PPq69PM
    ybjMGoch+C++m4EZt5lp1LRQdfEaPA1dmz+Q6l2LMFOp9eoyeXxdPZxShNIQs8ig
    rLa8qBUzsImB0gnICx6BKP/hMZd8SwDt/gSJiO/wTHGgVU5+4TRHef95gMdmsK7c
    0bRtqNKXpK6JsAmOR0K647btfcRvHNqMvADeYYGoOj3/5DP4Wfdef7yTkjfOoVBm
    eV1Jknbnijs9vGejO8ndLw==
    """

  Scenario: Updating an up-to-date Nextcloud 12.0.7 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.7.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.8.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.8RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    dAxk6j5jXpU5kIKFIeJV9iszF5jzkr6b7MJiaR/JVDzwBmAAn1owd/UhwTPQ+Oux
    2g55fNdciuZtSMi+dwD+kNWcZS2ZRwvNL9gkXHuNMSpnZ8aAU50gE2tw8PPq69PM
    ybjMGoch+C++m4EZt5lp1LRQdfEaPA1dmz+Q6l2LMFOp9eoyeXxdPZxShNIQs8ig
    rLa8qBUzsImB0gnICx6BKP/hMZd8SwDt/gSJiO/wTHGgVU5+4TRHef95gMdmsK7c
    0bRtqNKXpK6JsAmOR0K647btfcRvHNqMvADeYYGoOj3/5DP4Wfdef7yTkjfOoVBm
    eV1Jknbnijs9vGejO8ndLw==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.8.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.8RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    dAxk6j5jXpU5kIKFIeJV9iszF5jzkr6b7MJiaR/JVDzwBmAAn1owd/UhwTPQ+Oux
    2g55fNdciuZtSMi+dwD+kNWcZS2ZRwvNL9gkXHuNMSpnZ8aAU50gE2tw8PPq69PM
    ybjMGoch+C++m4EZt5lp1LRQdfEaPA1dmz+Q6l2LMFOp9eoyeXxdPZxShNIQs8ig
    rLa8qBUzsImB0gnICx6BKP/hMZd8SwDt/gSJiO/wTHGgVU5+4TRHef95gMdmsK7c
    0bRtqNKXpK6JsAmOR0K647btfcRvHNqMvADeYYGoOj3/5DP4Wfdef7yTkjfOoVBm
    eV1Jknbnijs9vGejO8ndLw==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.8.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.8RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    dAxk6j5jXpU5kIKFIeJV9iszF5jzkr6b7MJiaR/JVDzwBmAAn1owd/UhwTPQ+Oux
    2g55fNdciuZtSMi+dwD+kNWcZS2ZRwvNL9gkXHuNMSpnZ8aAU50gE2tw8PPq69PM
    ybjMGoch+C++m4EZt5lp1LRQdfEaPA1dmz+Q6l2LMFOp9eoyeXxdPZxShNIQs8ig
    rLa8qBUzsImB0gnICx6BKP/hMZd8SwDt/gSJiO/wTHGgVU5+4TRHef95gMdmsK7c
    0bRtqNKXpK6JsAmOR0K647btfcRvHNqMvADeYYGoOj3/5DP4Wfdef7yTkjfOoVBm
    eV1Jknbnijs9vGejO8ndLw==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 7.0
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.4.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-14.0.4RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    iIY5kZZmyhV21svic8dM1kDXExRUVurK4Xr5kKL+9XLTWwp+0WP/wXFvImgAp3dR
    ARqDIseFTFZYQAaH+fIM3noO1nFN7ytW1Dm4+KRskAw/9s1U+n3SV4qV1YZgreNH
    GJIdiTnwsC61luVKK6VLJnwzhyibTSdfSBhj64j9XgUCskTfIH9kj2Q+MLARuyAw
    4CZCPo+jddiv5W/H+8UFNoi3xJga1VwkdezWwV3Oy7WmGipXlRrH/usGm3Ve5Z/p
    cywHfAwr0OB+mM1WBMRDtU4k0m94WlQnX5f0GfKkcP1ZnWLFH41ZzrIIFK9d526V
    K6VgBqFJPfUCAwc4wvLKWQ==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 7.0
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.4.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-14.0.4RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    iIY5kZZmyhV21svic8dM1kDXExRUVurK4Xr5kKL+9XLTWwp+0WP/wXFvImgAp3dR
    ARqDIseFTFZYQAaH+fIM3noO1nFN7ytW1Dm4+KRskAw/9s1U+n3SV4qV1YZgreNH
    GJIdiTnwsC61luVKK6VLJnwzhyibTSdfSBhj64j9XgUCskTfIH9kj2Q+MLARuyAw
    4CZCPo+jddiv5W/H+8UFNoi3xJga1VwkdezWwV3Oy7WmGipXlRrH/usGm3Ve5Z/p
    cywHfAwr0OB+mM1WBMRDtU4k0m94WlQnX5f0GfKkcP1ZnWLFH41ZzrIIFK9d526V
    K6VgBqFJPfUCAwc4wvLKWQ==
    """

  Scenario: Updating an up-to-date Nextcloud 14.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "14.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "9"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.0.6" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-15.0.0beta2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    W5QzT0g9uIjBE7WWPsaVNQI6tEZ8TotMbXW8bLgM5wpLNsHo/IDwyKAxCXbyYjML
    V165uFZjnI8QEDS8azNUz471OzFOTgJ4ZmwAgqtfa5kfGenmbeZHnVBhctP5rXAR
    CsLWlbjeCmmRYNWborX5k4X/hWenPfTitLwJMBuhXxOfRKxrtXV6jLYskmL7OKH+
    G4ZItG3u+f/qjqW3Q3zVk+SA10E3da6ReniNlZsCpr8E0tIKYw3iaQ7ziVrW0ZIL
    5FSIugBF1i1iiRCPEmWHIPQFsOf9f0uyatwU20eDvDMuq+WbHOAuo00frd/F46Sp
    ewNOcFmzQAyO4tQUjV0RJg==
    """

  Scenario: Updating an up-to-date Nextcloud 14.0.3 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "14.0.3.0"
    And The received PHP version is "7.0.0"
    And the installation mtime is "9"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.0.6" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-15.0.0beta2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    W5QzT0g9uIjBE7WWPsaVNQI6tEZ8TotMbXW8bLgM5wpLNsHo/IDwyKAxCXbyYjML
    V165uFZjnI8QEDS8azNUz471OzFOTgJ4ZmwAgqtfa5kfGenmbeZHnVBhctP5rXAR
    CsLWlbjeCmmRYNWborX5k4X/hWenPfTitLwJMBuhXxOfRKxrtXV6jLYskmL7OKH+
    G4ZItG3u+f/qjqW3Q3zVk+SA10E3da6ReniNlZsCpr8E0tIKYw3iaQ7ziVrW0ZIL
    5FSIugBF1i1iiRCPEmWHIPQFsOf9f0uyatwU20eDvDMuq+WbHOAuo00frd/F46Sp
    ewNOcFmzQAyO4tQUjV0RJg==
    """

  Scenario: Updating an  outdated Nextcloud 15.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "15.0.0.0"
    And The received PHP version is "7.0.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.0.6" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-15.0.0beta2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    W5QzT0g9uIjBE7WWPsaVNQI6tEZ8TotMbXW8bLgM5wpLNsHo/IDwyKAxCXbyYjML
    V165uFZjnI8QEDS8azNUz471OzFOTgJ4ZmwAgqtfa5kfGenmbeZHnVBhctP5rXAR
    CsLWlbjeCmmRYNWborX5k4X/hWenPfTitLwJMBuhXxOfRKxrtXV6jLYskmL7OKH+
    G4ZItG3u+f/qjqW3Q3zVk+SA10E3da6ReniNlZsCpr8E0tIKYw3iaQ7ziVrW0ZIL
    5FSIugBF1i1iiRCPEmWHIPQFsOf9f0uyatwU20eDvDMuq+WbHOAuo00frd/F46Sp
    ewNOcFmzQAyO4tQUjV0RJg==
    """
