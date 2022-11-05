# resume_app

This is a simple resume app built with Dart and Flutter.(Always a work in progress)
The application contains a homepage, a simple skill comparison with indicators, a small yet concise information about my educationo and work history so far and a project section that takes you to my various repositories.

My Code base has the following breakdown:
- The Source code has four screens which are found in the pages directory,
- The screens are the homepage, skill section, history and project sections,
- Widgets such as the Appbar,etc repeat themselves throughout the codebase so they were extracted and placed into the widget.dart file,
- A bottom nav was positioned on the homepage for easy navigation as it is the index, and
- a sidenav is placed with a drawer containing my contact information and social links.

The basic design was sourced from here("https://dribbble.com/shots/15273424-Resume-CV-Mobile-Shots")
 
Libraries used in the project:
- Google fonts was used to get specific text styling,
- Google nav bar was used for bottom navigation,
- Percent indicator was used for the percentage indicators on the skill screen,
- Url launcher was used to link the various icons on the drawer and containers on the project section to their respective links
- Font awesome was used to get specific social media icons as flutter's default icon class didn't have them.

Features I would love to add in the future:
- Automatic Dark mode enabling
- Language enabling

Link to the Apk()

Challenges I faced during the creation of this project:
- I didn't know how to work with the percent indicator and url launcher packages as this was my first implementation with them. I overcame my difficulties by reading the documentaion.
- Google nav bar posed a problem with redirecting especially since I intended to use a full page vertical scroll. I had to take out that idea.

Link to Appetize()