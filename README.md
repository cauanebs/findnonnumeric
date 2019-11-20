# findnonnumeric
Sometimes our Stata database stores numbers as string variables. This might happen due to simple codification errors, where we only need to convert the string variable into a number using the `destring` Stata command. However, we can also experience some errors in the variable content, such as non-numeric characters. We can use the `force` option to overcome this problem, but this would lead to data losses.

In order to avoid data losses, we can check the content of the variable and manually remove non-numeric characters. In order to support the process of identifying these errors, the `findnonnumeric` command lists all occurrences to facilitate the correction process.

## Installation
Perform the following steps to install Stata ado files:

1. Open Stata
2. Type personal in the command line and hit enter to discover the location of your personal ado folder
3. Navigate to the personal ado folder (if after navigating there is no folder called personal, create one)
4. Place the ado and sthlp files into your personal ado folder