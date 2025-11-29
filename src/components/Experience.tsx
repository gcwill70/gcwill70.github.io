export default function Experience() {
  return (
    <div className="space-y-3">
      <h1>Experience</h1>

      <h2 className="text-2xl font-semibold">
        <a
          href="https://doi.org/10.25394/PGS.22673890.v1"
          className="text-blue-500 hover:underline"
          target="_blank"
        >
          Trust &amp; Safety Engineering Study - M.S. Thesis
        </a>
      </h2>
      <ul>
        <li>
          Dataset of Trust &amp; Safety GitHub issues in open-source social
          media platforms, including Mastodon and Diaspora.
        </li>
        <li>
          Repository includes Python tooling used to gather data as well as
          reproduction steps for the study.
        </li>
        <li>
          Manuscript is available{" "}
          <a
            href="https://doi.org/10.25394/PGS.22673890.v1"
            className="text-blue-500 hover:underline"
            target="_blank"
          >
            here
          </a>
          .
        </li>
        <li>
          Dataset is available{" "}
          <a
            href="https://zenodo.org/records/7601293"
            className="text-blue-500 hover:underline"
            target="_blank"
          >
            here
          </a>
          .
        </li>
      </ul>

      <h2 className="text-2xl font-semibold">
        <a
          href="https://buildboundless.com/"
          className="text-blue-500 hover:underline"
          target="_blank"
        >
          Senior Software Engineer - Boundless
        </a>
      </h2>
      <ul>
        <li>
          Built social application for customer niche with an admin interface,
          user safety features, and robust user analytics plugin.
        </li>
        <li>
          Created AI health assessment application in Next.js with robust
          prompting architecture, design system, and HIPAA protection.
        </li>
        <li>
          Replaced financial process that generates 100% of stakeholder revenue
          by writing over 20,000 lines of calculation logic with 96% test
          coverage.
        </li>
        <li>
          Led the delivery of 5 projects on time and under budget by pioneering
          Agile adoption organization-wide.
        </li>
      </ul>
    </div>
  );
};
