Feature: Testing the update scenario of stable releases

  Scenario: Updating an outdated ownCloud 8.2.5 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 9.0.55 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "9.0.55"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date staged Nextcloud 10.0.6 with PHP 5.4 on the stable channel
    Given There is a release with channel "stable"
    And The received PHP version is "5.4.0"
    And the installation mtime is "60"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an outdated Nextcloud 10.0.2 on the stable channel without PHP version
    Given There is a release with channel "stable"
    And The received version is "9.1.2.0"
    When The request is sent
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date staged Nextcloud 10.0.6 with PHP 5.6 on the stable channel
    Given There is a release with channel "stable"
    And The received PHP version is "5.6.0"
    And the installation mtime is "60"
    And The received version is "9.1.6.1"
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

  Scenario: Updating a non-staged outdated Nextcloud 11.0.0 stable without PHP version
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    And The installation mtime is "20"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating a staged outdated Nextcloud 11.0.0 stable without PHP version
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    And The installation mtime is "15"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating a non-staged outdated Nextcloud 11.0.0 beta on the empty channel - will use the stable channel then
    Given There is a release with channel ""
    And The received version is "11.0.0.2"
    And the installation mtime is "20"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.11.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.11.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    0y3atdZWQYBHr3NblUoqnUvO3Xum5dldFKy6F5ApY+cVInlIx4qTKTKZiGrSRasU
    5wqbJwp4GE29MHpjOrMJfEUOCTz7nFH0iD4EVBbH8nTlqUB1QsQSRaGz9d6Ajs98
    OopvaB2DcCQZ9GWhspCuoFKDu0NyzqD3RK6jOhtwDVIObQLeSLVulNClDlIXo1SC
    DJsmVi4m7rOWDYrNFdDcDQsWo7Clwyv26mGkj132Fne1qIKoQ2X/eIz8oHnsi4v0
    TfsjdQxGHxreYCFNxpX/NJtOe0r3wauF5d4gTCdXP0+z9x56PKhAYZ9XukN/krx+
    BgNGvlj3eVHqWt2kjKvFCQ==
    """

  Scenario: Updating a non-staged outdated Nextcloud 11.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And The installation mtime is "20"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating a non-staged up-to-date Nextcloud 11.0.0 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "11.0.6.1"
    And The installation mtime is "20"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating an up-to-date Nextcloud 11.0.0 on the stable channel without mtime
    Given There is a release with channel "stable"
    And The received version is "11.0.6.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

 Scenario: Updating an outdated Nextcloud 12.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "12.0.0.16"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.11.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.11.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    0y3atdZWQYBHr3NblUoqnUvO3Xum5dldFKy6F5ApY+cVInlIx4qTKTKZiGrSRasU
    5wqbJwp4GE29MHpjOrMJfEUOCTz7nFH0iD4EVBbH8nTlqUB1QsQSRaGz9d6Ajs98
    OopvaB2DcCQZ9GWhspCuoFKDu0NyzqD3RK6jOhtwDVIObQLeSLVulNClDlIXo1SC
    DJsmVi4m7rOWDYrNFdDcDQsWo7Clwyv26mGkj132Fne1qIKoQ2X/eIz8oHnsi4v0
    TfsjdQxGHxreYCFNxpX/NJtOe0r3wauF5d4gTCdXP0+z9x56PKhAYZ9XukN/krx+
    BgNGvlj3eVHqWt2kjKvFCQ==
    """

 Scenario: Updating an up-to-date Nextcloud 12.0.5 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "12.0.5.3"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.11.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.11.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    0y3atdZWQYBHr3NblUoqnUvO3Xum5dldFKy6F5ApY+cVInlIx4qTKTKZiGrSRasU
    5wqbJwp4GE29MHpjOrMJfEUOCTz7nFH0iD4EVBbH8nTlqUB1QsQSRaGz9d6Ajs98
    OopvaB2DcCQZ9GWhspCuoFKDu0NyzqD3RK6jOhtwDVIObQLeSLVulNClDlIXo1SC
    DJsmVi4m7rOWDYrNFdDcDQsWo7Clwyv26mGkj132Fne1qIKoQ2X/eIz8oHnsi4v0
    TfsjdQxGHxreYCFNxpX/NJtOe0r3wauF5d4gTCdXP0+z9x56PKhAYZ9XukN/krx+
    BgNGvlj3eVHqWt2kjKvFCQ==
    """

 Scenario: Updating an up-to-date Nextcloud 12.0.5 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "12.0.5.3"
    And The received PHP version is "5.6.0"
    And the installation mtime is "65"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.11.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.11.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    0y3atdZWQYBHr3NblUoqnUvO3Xum5dldFKy6F5ApY+cVInlIx4qTKTKZiGrSRasU
    5wqbJwp4GE29MHpjOrMJfEUOCTz7nFH0iD4EVBbH8nTlqUB1QsQSRaGz9d6Ajs98
    OopvaB2DcCQZ9GWhspCuoFKDu0NyzqD3RK6jOhtwDVIObQLeSLVulNClDlIXo1SC
    DJsmVi4m7rOWDYrNFdDcDQsWo7Clwyv26mGkj132Fne1qIKoQ2X/eIz8oHnsi4v0
    TfsjdQxGHxreYCFNxpX/NJtOe0r3wauF5d4gTCdXP0+z9x56PKhAYZ9XukN/krx+
    BgNGvlj3eVHqWt2kjKvFCQ==
    """

 Scenario: Updating an outdated Nextcloud 13.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "13.0.0.16"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.7.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.7.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    bTbnni75MclqR8BOxs0e/REa6SX3Kqt13NpopbNIdinTMI+sHksysB5uxUn3T/JT
    LbsLg9aKR95MkGSHPjEojonmH7Bxwt5OjLEDEY7ZJ1s8evmuVBZcx8N2CiHSwUVF
    keSAxMaoiaYJqCRfkShJB8chfebTECMPBCiR2oIukQve/TH44zOUhfuUki1WTuN8
    KsZeLzMYnM/YsYhyYIZ4RP+90MwfFPoor3zVlzaioXu75Yum0h19AR2tz1ZLr25G
    2GnEbokhMZYYDGvat6cIIPpC/9vrxV8HNA83QlBbSJ/RJJXjZEEbG72uM2iG8rSj
    +cwpw3NSFPI2tuT0er/gvQ==
    """

 Scenario: Updating an outdated Nextcloud 13.0.0 beta on the stable channel (php 5.6)
    Given There is a release with channel "stable"
    And The received version is "13.0.0.16"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.11.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.11.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    0y3atdZWQYBHr3NblUoqnUvO3Xum5dldFKy6F5ApY+cVInlIx4qTKTKZiGrSRasU
    5wqbJwp4GE29MHpjOrMJfEUOCTz7nFH0iD4EVBbH8nTlqUB1QsQSRaGz9d6Ajs98
    OopvaB2DcCQZ9GWhspCuoFKDu0NyzqD3RK6jOhtwDVIObQLeSLVulNClDlIXo1SC
    DJsmVi4m7rOWDYrNFdDcDQsWo7Clwyv26mGkj132Fne1qIKoQ2X/eIz8oHnsi4v0
    TfsjdQxGHxreYCFNxpX/NJtOe0r3wauF5d4gTCdXP0+z9x56PKhAYZ9XukN/krx+
    BgNGvlj3eVHqWt2kjKvFCQ==
    """

 Scenario: Updating an up-to-date Nextcloud 13.0.7 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "13.0.7.2"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.7.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.7.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    bTbnni75MclqR8BOxs0e/REa6SX3Kqt13NpopbNIdinTMI+sHksysB5uxUn3T/JT
    LbsLg9aKR95MkGSHPjEojonmH7Bxwt5OjLEDEY7ZJ1s8evmuVBZcx8N2CiHSwUVF
    keSAxMaoiaYJqCRfkShJB8chfebTECMPBCiR2oIukQve/TH44zOUhfuUki1WTuN8
    KsZeLzMYnM/YsYhyYIZ4RP+90MwfFPoor3zVlzaioXu75Yum0h19AR2tz1ZLr25G
    2GnEbokhMZYYDGvat6cIIPpC/9vrxV8HNA83QlBbSJ/RJJXjZEEbG72uM2iG8rSj
    +cwpw3NSFPI2tuT0er/gvQ==
    """

 Scenario: Updating an up-to-date Nextcloud 13.0.11 on the stable channel (late update)
    Given There is a release with channel "stable"
    And The received version is "13.0.11.1"
    And The received PHP version is "7.0.0"
    And the installation mtime is "65"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.7.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.7.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    bTbnni75MclqR8BOxs0e/REa6SX3Kqt13NpopbNIdinTMI+sHksysB5uxUn3T/JT
    LbsLg9aKR95MkGSHPjEojonmH7Bxwt5OjLEDEY7ZJ1s8evmuVBZcx8N2CiHSwUVF
    keSAxMaoiaYJqCRfkShJB8chfebTECMPBCiR2oIukQve/TH44zOUhfuUki1WTuN8
    KsZeLzMYnM/YsYhyYIZ4RP+90MwfFPoor3zVlzaioXu75Yum0h19AR2tz1ZLr25G
    2GnEbokhMZYYDGvat6cIIPpC/9vrxV8HNA83QlBbSJ/RJJXjZEEbG72uM2iG8rSj
    +cwpw3NSFPI2tuT0er/gvQ==
    """

 Scenario: Updating an up-to-date Nextcloud 13.0.11 on the stable channel (php 5.6)
    Given There is a release with channel "stable"
    And The received version is "13.0.11.1"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is empty


 Scenario: Updating an outdated Nextcloud 14.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "14.0.0.18"
    And The received PHP version is "7.0.0"
    And the installation mtime is "30"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.2.0" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    jbMZKu/ICGvOnG44z6I3H996RJ5At4c0i6E4b/K6/imO/18XxRXnKVpUkImt46q0
    +2PjJ8CL8v/2hbhYO1kCExeQ9HWrKn9FnkkxT4K6Q+jnq42nOv/BddDMrzAlxmAu
    qCKARb652D3bfOyGx2+cSc45YxbJqQiGMm/wCnPCZLtx9RUOG5C0Lt4/vgeN8Rk2
    GaBv6cn6GE9lntP4aa3YKqt67KovHeSHYIiP7MVwe0Bwiu2n6adkDLn+WmVU/Osw
    dQWgfifeB/isVeb8koOmkK8rQ+M0FicrfHsCUqzh/oDap7lu7WdgRvNCiUbEwcIw
    GZyAWsPsboY0Qg7I2XWssA==
    """

 Scenario: Updating an up-to-date Nextcloud 14.0.7 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "14.0.7.1"
    And The received PHP version is "7.0.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.2.0" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    jbMZKu/ICGvOnG44z6I3H996RJ5At4c0i6E4b/K6/imO/18XxRXnKVpUkImt46q0
    +2PjJ8CL8v/2hbhYO1kCExeQ9HWrKn9FnkkxT4K6Q+jnq42nOv/BddDMrzAlxmAu
    qCKARb652D3bfOyGx2+cSc45YxbJqQiGMm/wCnPCZLtx9RUOG5C0Lt4/vgeN8Rk2
    GaBv6cn6GE9lntP4aa3YKqt67KovHeSHYIiP7MVwe0Bwiu2n6adkDLn+WmVU/Osw
    dQWgfifeB/isVeb8koOmkK8rQ+M0FicrfHsCUqzh/oDap7lu7WdgRvNCiUbEwcIw
    GZyAWsPsboY0Qg7I2XWssA==
    """

 Scenario: Updating an outdated Nextcloud 15.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "15.0.0.9"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.2.0" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    jbMZKu/ICGvOnG44z6I3H996RJ5At4c0i6E4b/K6/imO/18XxRXnKVpUkImt46q0
    +2PjJ8CL8v/2hbhYO1kCExeQ9HWrKn9FnkkxT4K6Q+jnq42nOv/BddDMrzAlxmAu
    qCKARb652D3bfOyGx2+cSc45YxbJqQiGMm/wCnPCZLtx9RUOG5C0Lt4/vgeN8Rk2
    GaBv6cn6GE9lntP4aa3YKqt67KovHeSHYIiP7MVwe0Bwiu2n6adkDLn+WmVU/Osw
    dQWgfifeB/isVeb8koOmkK8rQ+M0FicrfHsCUqzh/oDap7lu7WdgRvNCiUbEwcIw
    GZyAWsPsboY0Qg7I2XWssA==
    """

  Scenario: Updating an up-to-date Nextcloud 14.0.7 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "14.0.7.1"
    And The received PHP version is "7.0.0"
    And the installation mtime is "30"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.2.0" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    jbMZKu/ICGvOnG44z6I3H996RJ5At4c0i6E4b/K6/imO/18XxRXnKVpUkImt46q0
    +2PjJ8CL8v/2hbhYO1kCExeQ9HWrKn9FnkkxT4K6Q+jnq42nOv/BddDMrzAlxmAu
    qCKARb652D3bfOyGx2+cSc45YxbJqQiGMm/wCnPCZLtx9RUOG5C0Lt4/vgeN8Rk2
    GaBv6cn6GE9lntP4aa3YKqt67KovHeSHYIiP7MVwe0Bwiu2n6adkDLn+WmVU/Osw
    dQWgfifeB/isVeb8koOmkK8rQ+M0FicrfHsCUqzh/oDap7lu7WdgRvNCiUbEwcIw
    GZyAWsPsboY0Qg7I2XWssA==
    """
