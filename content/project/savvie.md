+++
date = "2016-11-11"
title = "SAVvie"
SourceCodeURL = "https://github.com/cc-sav/product"
Tags = ["Project", "Go", "C sharp", "Web"]
Description = "Web app for making formal decisions"
+++

Prounounced like "savvy," the name SAVvie comes from our initial prototype name, "Social Argument Voting," and the verb "vie," which means to compete. We imagined it to be an online implementation of Robert's Rules of Order --- a place suitable for online debate and **group decision-making**.

SAVvie is a team project that was jump-started during the 24-hour Southern Utah Code Camp hackathon of 2016. I took on the responsibilities of a **team leader** for the four student developers who created the app: [Katrina Mehring](https://github.com/ktrinanm), Nick Rossi, [Jacob Ward](http://jacobcward.com/), and myself. After the hackathon, I continued to work on SAVvie with Katrina.

## Screenshots:

{{< figure src="/images/savvie-1.png" alt="List of all arguments on the site including their voting scores" link="/images/savvie-1.png" >}}

{{< figure src="/images/savvie-2.png" alt="Detail page for a single argument, including voting buttons and comments" link="/images/savvie-2.png" >}}

{{< figure src="/images/savvie-3.png" alt="Login page with an error message" link="/images/savvie-3.png" >}}

## Architecture and stack:

- MVC pattern
- **Vagrant** dev environments
- Controller: Go's standard **net/http** package
- Views: Go's standard html/template package
- Models:
    - C# CLI for persisting arguments and votes to filesystem
    - Go packages for persisting users and comments to filesystem
- No browser JavaScript yet