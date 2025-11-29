export default () => {
  return (
    <div className="space-y-3">
      <h1 className="text-3xl font-bold">Experience</h1>

      <h2 className="text-2xl font-semibold">
        <a
          href="https://doi.org/10.25394/PGS.22673890.v1"
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
    </div>
  );
};
