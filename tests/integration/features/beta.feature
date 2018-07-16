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
    And Update to version "12.0.10.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.10RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    ezzZcZw795z9C/RolCaQBaO4tg59r33zHSXvdgMVqwO5lwN07UuZEb35+hyOn7vD
    1UsxEJ1OMD4PlGt5r5lDdgd2eip7O5wDcl62QhvxAOForE5iWWhFR8XiWCgiQp4v
    ASWB8YFuzNOUfieCP8yXha3T30OT5ghsJjJaNwC4YeC9J6vMjnCehBGsPpGdrwhG
    bgK+ZnE1jVwD11Ns9aZP5BJ0S+COAVYgrFwGbpdAF2lucXPSbGee6QYBouvqEAAa
    kSIg6WPv2BKlz2SMXUnbShpjv8LGtcOqvlST+wNC6ulA05+854gyc4zBONMxLDJn
    +W19V0Rb/k/UdhzsOQFvOA==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel without an mtime
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.10.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.10RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    ezzZcZw795z9C/RolCaQBaO4tg59r33zHSXvdgMVqwO5lwN07UuZEb35+hyOn7vD
    1UsxEJ1OMD4PlGt5r5lDdgd2eip7O5wDcl62QhvxAOForE5iWWhFR8XiWCgiQp4v
    ASWB8YFuzNOUfieCP8yXha3T30OT5ghsJjJaNwC4YeC9J6vMjnCehBGsPpGdrwhG
    bgK+ZnE1jVwD11Ns9aZP5BJ0S+COAVYgrFwGbpdAF2lucXPSbGee6QYBouvqEAAa
    kSIg6WPv2BKlz2SMXUnbShpjv8LGtcOqvlST+wNC6ulA05+854gyc4zBONMxLDJn
    +W19V0Rb/k/UdhzsOQFvOA==
    """

  Scenario: Updating an outdated Nextcloud 12.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.15"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.5.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.5RC2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    WlFgveb8+gXODQ7qg6MXBbLNPBZKbiqp4j5uRaq/ei9FzC4H4UbdvfpirXnhhbg2
    xbwwAExP6QVZK/TW0i1i6MY0Qs4Gsxu3ch+eAhFYJFIdbU2VismyC0HUN06mmImq
    aj21oIIFFDsac5SK8ch+nuG+h0ZpZLtgWbrECPFWaz3vtoJGz8UxKdF+iF13teaX
    st4Ug6iN/+8CYcU7Tw3zne7bT8ib9jTSj858NiVEHMboBsA4qZTx3puIG54Ad3SO
    QgTO4INJ8J5WRdEPTbe1th/O2kCPtLx0BSu9Vvs/Fj3X9b36AgPu1wKgVxGR5uxn
    JBkn5gGGt9nR/Gqbxgxpmg==
    """

  Scenario: Updating an up-to-date Nextcloud 12.0.7 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.7.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.5.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.5RC2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    WlFgveb8+gXODQ7qg6MXBbLNPBZKbiqp4j5uRaq/ei9FzC4H4UbdvfpirXnhhbg2
    xbwwAExP6QVZK/TW0i1i6MY0Qs4Gsxu3ch+eAhFYJFIdbU2VismyC0HUN06mmImq
    aj21oIIFFDsac5SK8ch+nuG+h0ZpZLtgWbrECPFWaz3vtoJGz8UxKdF+iF13teaX
    st4Ug6iN/+8CYcU7Tw3zne7bT8ib9jTSj858NiVEHMboBsA4qZTx3puIG54Ad3SO
    QgTO4INJ8J5WRdEPTbe1th/O2kCPtLx0BSu9Vvs/Fj3X9b36AgPu1wKgVxGR5uxn
    JBkn5gGGt9nR/Gqbxgxpmg==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.5.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.5RC2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    WlFgveb8+gXODQ7qg6MXBbLNPBZKbiqp4j5uRaq/ei9FzC4H4UbdvfpirXnhhbg2
    xbwwAExP6QVZK/TW0i1i6MY0Qs4Gsxu3ch+eAhFYJFIdbU2VismyC0HUN06mmImq
    aj21oIIFFDsac5SK8ch+nuG+h0ZpZLtgWbrECPFWaz3vtoJGz8UxKdF+iF13teaX
    st4Ug6iN/+8CYcU7Tw3zne7bT8ib9jTSj858NiVEHMboBsA4qZTx3puIG54Ad3SO
    QgTO4INJ8J5WRdEPTbe1th/O2kCPtLx0BSu9Vvs/Fj3X9b36AgPu1wKgVxGR5uxn
    JBkn5gGGt9nR/Gqbxgxpmg==
    """