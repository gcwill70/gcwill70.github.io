export const ExperiencesView = () => {
  return (
    <div className="">
      <h1 className="text-3xl font-bold mb-4">About Me</h1>
      <p className="mb-4">
        Hi there! I&apos;m Geoff and I&apos;m a software engineer with 3 years
        of professional experience.
      </p>
      <p className="mb-10">Please reach out if you want to chat!</p>

      <h1 className="text-3xl font-bold mb-4">Projects</h1>

      <div className="mb-8">
        <h2 className="text-2xl font-semibold mb-2">
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
      </div>

      <div className="mb-8">
        <h2 className="text-2xl font-semibold mb-2">
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
        </ul>
      </div>

      <div className="mb-8">
        <h2 className="text-2xl font-semibold mb-2">Python Autograder</h2>
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
      </div>

      <div className="mb-8">
        <h2 className="text-2xl font-semibold mb-2">
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
        </ul>
      </div>

      <div className="mb-8">
        <h2 className="text-2xl font-semibold mb-2">
          Purdue Flutter Development Club
        </h2>
        <ul className="list-disc list-inside">
          <li>
            Lead the{" "}
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

      <div className="mb-8">
        <h2 className="text-2xl font-semibold mb-2">
          M.S. Thesis in Software Engineering - Purdue University
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
              href="https://hammer.purdue.edu/articles/thesis/AN_EMPIRICAL_STUDY_OF_TRUST_SAFETY_ENGINEERING_IN_OPEN-SOURCE_SOCIAL_MEDIA_PLATFORMS/22673890/1"
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
      </div>
    </div>
  );
};
