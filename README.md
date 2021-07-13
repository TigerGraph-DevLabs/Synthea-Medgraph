# Getting Started
This is a graph based on [Synthea](https://synthetichealth.github.io/synthea/), a synthetic healthcare data generator. To get started, please review the prerequisites, installation for TG Cloud (if needed), and the Synthea Graph installation instructions. 

> NOTE: [For Docker Instructions](#docker)

## Prerequisites
* git
* gradle
* TigerGraph Environment

### Installation for TG Cloud
1. Go to [TGCloud.io](https://tgcloud.io)
2. Create an account or login
3. Navigate to My Solutions
4. Click Create Solution (top right)
5. Choose blank graph and complete provisioning

## Synthea Graph Installation Instructions
1. Navigate to your project folder (where you want the project to reside)
2. Run `git clone https://github.com/TigerGraph-OSS/Synthea-Medgraph.git`
3. `cd Synthea-medgraph`
4. Update the gradle.properties file with your TigerGraph server information
5. Run `gradle tasks` (You should see **Build Successful**)
6. Type `openssl s_client -connect hostname.i.tgcloud.io:14240 < /dev/null 2> /dev/null | openssl x509 -text > cert.txt`, replacing "hostname" with the name of your TG cloud server
7. Navigate to your home directory (`cd`), open your .gradle folder (`cd .gradle`), then create a gradle.properties file (`touch gradle.properties`). 
8. Open the gradle.properties file just created in the home directory. On the first line, write `gpr.user = github_username`, replacing github_username with your GitHub username. On the second line, write `gpr.key = github_token`, replacing github_token with a personal token on GitHub. To generate this token, go to github.com, navigate to your settings, select "Developer Settings," click "Personal access tokens," then press the button "Generate new token." Check off the option "read:packages" and generate the token. Copy the token and paste it replacing github_token. Finally, save the gradle.properties file and navigate back to the Synthea directory. 
9. Run `gradle createSchema`
10. Go to your TigerGraph solution, and under Admin -> User Management click Create Secret
11. Add the secret to the gradle.properties file
12. Next run `gradle allCreateLoad`
13. Finally run `gradle allLoad`


## Docker
Please refer to [dockerized-synthetic-healthcare-graph](https://dev.to/herk/dockerized-synthetic-healthcare-graph-4m59) for full walk-through.

### Contributors
* Demo developed by [Akash Kaul](https://www.linkedin.com/in/akash-kaul-6a8063194/)
* Docker developed by [Bruno Simic](https://www.linkedin.com/in/brunosimic/)
* Maintained by [Jon Herke](https://www.linkedin.com/in/jonherke/)
