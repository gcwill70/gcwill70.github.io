export default function Education() {
  return (
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
        B.S. Electrical Engineering with Distinction - Purdue University - 2018
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
  );
};
