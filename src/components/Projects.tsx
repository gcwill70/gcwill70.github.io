export default function Projects() {
  return (
    <div className="space-y-3">
      <h1>Projects</h1>

      <h2>
        <a
          href="https://chrome.google.com/webstore/detail/fillhistory/nnbagffnngmfbogaajipjmaadglmjgjc"
          target="_blank"
        >
          FillHistory
        </a>
      </h2>
      <ul>
        <li>Autofill links from browser history.</li>
        <li>
          Open a window with a shortcut, search through history, then insert
          into the selected text box.
        </li>
        <li>
          Built with TypeScript, React, and Redux. Clean architecture design.
        </li>
      </ul>

      {/* <h2>
          <a
            href="https://correspond-dotapp.web.app/"
            
            target="_blank"
          >
            correspond.app
          </a>
        </h2>
        <ul>
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

      <h2>Python Autograder</h2>
      <ul>
        <li>
          Developed toolkit to collect and grade student code inside a GitHub
          Action for full automation and easy scalability.
        </li>
        <li>
          <a href="https://pypi.org/project/autograde.py/" target="_blank">
            autograde.py
          </a>{" "}
          runs provided tests and collects results that can be uploaded as
          workflow an artifact.
        </li>
        <li>
          <a
            href="https://github.com/PurdueECE/autograder-demo"
            target="_blank"
          >
            GitHub Actions workflow
          </a>{" "}
          collects the repos to grade, finds the appropriate commit before the
          due date, and grades them with autograde.py.
        </li>
      </ul>

      {/* <h2>
          <a
            href="https://github.com/gcwill70/maps_clone"
            
            target="_blank"
          >
            Google Maps Clone
          </a>
        </h2>
        <ul>
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

      <h2>Purdue Flutter Development Club</h2>
      <ul>
        <li>
          Led the{" "}
          <a href="https://github.com/purdueflutter" target="_blank">
            Purdue Flutter Development Club
          </a>{" "}
          along with President to recruit members, organize events, run
          workshops, and motivate students.
        </li>
        <li>
          State management workshop.{" "}
          <a href="https://www.youtube.com/watch?v=EJag5uRRy6c" target="_blank">
            YouTube
          </a>{" "}
          |{" "}
          <a
            href="https://github.com/purdueflutter/state_mgmt_workshop"
            target="_blank"
          >
            GitHub
          </a>
        </li>
        <li>
          Personal website workshop.{" "}
          <a href="https://www.youtube.com/watch?v=gq3wCHI0G5w" target="_blank">
            YouTube
          </a>{" "}
          |{" "}
          <a
            href="https://github.com/purdueflutter/purdueflutter.github.io"
            target="_blank"
          >
            GitHub
          </a>
        </li>
        <li>
          Class viewer app.{" "}
          <a
            href="https://github.com/purdueflutter/basicflutterworkshop_app"
            target="_blank"
          >
            GitHub
          </a>
        </li>
      </ul>
    </div>
  );
}
