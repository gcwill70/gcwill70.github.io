export const ExperiencesView = () => {
  return (
    <div className="space-y-12">
      <div className="space-y-3">
        <h1 className="text-3xl font-bold">About Me</h1>
        <p>
          Hi there! I&apos;m Geoff and I&apos;ve been software engineer since
          2018. I&apos; spent recent years working in web development and Trust
          &amp; Safety.
        </p>
      </div>

      <div className="space-y-3">
        <h1 className="text-3xl font-bold">Publications</h1>
        <h2 className="text-2xl font-semibold">
          <a
            href="https://doi.org/10.1016/j.jss.2024.112322"
            className="text-blue-500 hover:underline"
            target="_blank"
          >
            Engineering Patterns for Trust and Safety on Social Media Platforms
          </a>
        </h2>
        <p>
          Cramer, Maxam, and Davis. Journal of Systems and Software 2025.
        </p>
      </div>

      <div className="space-y-3">
        <h1 className="text-3xl font-bold">Education</h1>
        <h2 className="text-2xl font-semibold">
          M.S. in Computer Engineering with Thesis - Purdue University - 2023
        </h2>
        <ul className="list-disc list-inside">
          <li>
            Thesis Title: Trust & Safety Engineering in Open-source Social Media
            Platforms
          </li>
          <li>
            First empirical study of T&S Engineering that analyzed 60 GitHub
            issues in{" "}
            <a
              href="https://joinmastodon.org"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              Mastodon
            </a>{" "}
            and{" "}
            <a
              href="https://diasporafoundation.org"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              Diaspora
            </a>
            . Manuscript is available{" "}
            <a
              href="https://doi.org/10.25394/PGS.22673890.v1"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              here.
            </a>
          </li>
          <li>
            Developed{" "}
            <a
              href="https://github.com/gcwill70/mining_tool"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              mining_tool
            </a>{" "}
            in Python to collect and analyze GitHub issue discussions.
          </li>
        </ul>
        <h2 className="text-2xl font-semibold">
          B.S. Electrical Engineering with Distinction - Purdue University -
          2018
        </h2>
        <ul className="list-disc list-inside">
          <li>
            Focus on software engineering with courses in data structures,
            algorithms, and object-oriented design.
          </li>
          {/* <li>
            <a
              href="https://github.com/gcwill70/Senior-Design/tree/master/SensorHub"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              SensorHub - Senior Project
            </a>
          </li> */}
        </ul>
      </div>

      <div className="space-y-3">
        <h1 className="text-3xl font-bold">Experience</h1>

        <h2 className="text-2xl font-semibold">
          <a
            href="https://zenodo.org/records/7601293"
            className="text-blue-500 hover:underline"
            target="_blank"
          >
            Trust &amp; Safety Engineering Study - M.S. Thesis
          </a>
        </h2>
        <ul className="list-disc list-inside">
          <li>
            Dataset of Trust &amp; Safety GitHub issues in open-source social
            media platforms, including Mastodon and Diaspora.
          </li>
          <li>
            Repository includes Python tooling used to gather data as well as
            reproduction steps for the study.
          </li>
          <li>
            Further description of the study and its result can be found in my
            full{" "}
            <a
              href="https://doi.org/10.25394/PGS.22673890.v1"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              manuscript
            </a>
            .
          </li>
        </ul>

        <h2 className="text-2xl font-semibold">
          <a
            href="https://chrome.google.com/webstore/detail/fillhistory/nnbagffnngmfbogaajipjmaadglmjgjc"
            className="text-blue-500 hover:underline"
            target="_blank"
          >
            FillHistory
          </a>
        </h2>
        <ul className="list-disc list-inside">
          <li>Autofill links from browser history.</li>
          <li>
            Open a window with a shortcut, search through history, then insert
            into the selected text box.
          </li>
          <li>
            Built with TypeScript, React, and Redux. Clean architecture design.
          </li>
        </ul>

        {/* <h2 className="text-2xl font-semibold">
          <a
            href="https://correspond-dotapp.web.app/"
            className="text-blue-500 hover:underline"
            target="_blank"
          >
            correspond.app
          </a>
        </h2>
        <ul className="list-disc list-inside">
          <li>Flutter mobile app to send and receive handwritten letters.</li>
          <li>
            Clean, feature-oriented architecture with Firebase auth providers
            and Firestore integration.
          </li>
          <li>
            Designed for those that love writing and receiving handwritten
            messages from friends and family.
          </li>
          <li>
            Planned features: add pictures & images, type letters using
            handwritten fonts, and find pen pals in the app.
          </li>
        </ul> */}

        <h2 className="text-2xl font-semibold">Python Autograder</h2>
        <ul className="list-disc list-inside">
          <li>
            Developed toolkit to collect and grade student code inside a GitHub
            Action for full automation and easy scalability.
          </li>
          <li>
            <a
              href="https://pypi.org/project/autograde.py/"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              autograde.py
            </a>{" "}
            runs provided tests and collects results that can be uploaded as
            workflow an artifact.
          </li>
          <li>
            <a
              href="https://github.com/PurdueECE/autograder-demo"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              GitHub Actions workflow
            </a>{" "}
            collects the repos to grade, finds the appropriate commit before the
            due date, and grades them with autograde.py.
          </li>
        </ul>

        {/* <h2 className="text-2xl font-semibold">
          <a
            href="https://github.com/gcwill70/maps_clone"
            className="text-blue-500 hover:underline"
            target="_blank"
          >
            Google Maps Clone
          </a>
        </h2>
        <ul className="list-disc list-inside">
          <li>
            Flutter mobile app with basic features of Google Maps location
            search and navigation.
          </li>
          <li>
            Flexible architecture with bootstrap design pattern and isolated
            Flutter packages.
          </li>
          <li>
            Straightforward setup with clear documentation on how to configure
            and run the app.
          </li>
        </ul> */}

        <h2 className="text-2xl font-semibold">
          Purdue Flutter Development Club
        </h2>
        <ul className="list-disc list-inside">
          <li>
            Led the{" "}
            <a
              href="https://github.com/purdueflutter"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              Purdue Flutter Development Club
            </a>{" "}
            along with President to recruit members, organize events, run
            workshops, and motivate students.
          </li>
          <li>
            State management workshop.{" "}
            <a
              href="https://www.youtube.com/watch?v=EJag5uRRy6c"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              YouTube
            </a>{" "}
            |{" "}
            <a
              href="https://github.com/purdueflutter/state_mgmt_workshop"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              GitHub
            </a>
          </li>
          <li>
            Personal website workshop.{" "}
            <a
              href="https://www.youtube.com/watch?v=gq3wCHI0G5w"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              YouTube
            </a>{" "}
            |{" "}
            <a
              href="https://github.com/purdueflutter/purdueflutter.github.io"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              GitHub
            </a>
          </li>
          <li>
            Class viewer app.{" "}
            <a
              href="https://github.com/purdueflutter/basicflutterworkshop_app"
              className="text-blue-500 hover:underline"
              target="_blank"
            >
              GitHub
            </a>
          </li>
        </ul>
      </div>
    </div>
  );
};
