Import-Module -Force $PSScriptRoot\..\Verb-Noun.ps1

Describe 'Verb-Noun' {
    
    Context 'Strict mode' { 

        Set-StrictMode -Version latest

        It 'Should succeed on known paths' {
            $StartTime = Get-Date
            $Output = Verb-Noun -Path C:\, HKLM:\System, ENV:Path, Function:Verb-Noun
            $EndTime = Get-Date

            #No output expected, default timeout is 5 seconds
            ($EndTime - $StartTime).TotalSeconds -le 5 | Should be $True
        }
        
        It 'Should error on timeout without passthru' {
            { Verb-Noun -Timeout 1 -Path C:\WhoOnEarthWouldHaveThisPath } | Should Throw
        }

        It 'Should return true when paths exist and passthru is used' {
            Verb-Noun -Path C:\, HKLM:\System -Passthru | Should be $True
        }
        
    }
}


Describe 'Test-Connection' {
    
    Context 'Strict mode' { 

        Set-StrictMode -Version latest

        It 'Should succeed on known hosts' {
            $StartTime = Get-Date
            $Output = Test-Connection google.com -Count 2
            $EndTime = Get-Date

            #No output expected, default timeout is 5 seconds
            ($EndTime - $StartTime).TotalSeconds -le 5 | Should be $True
        }
        
        It 'Should succeed on loopback' {
            Test-Connection -ComputerName localhost -Count 2
                    }

        It 'Should throw on invalid hosts' {
            { Test-Connection -ComputerName notonline -Count 1 -ErrorAction stop} | Should Throw
        }
       
    }
}