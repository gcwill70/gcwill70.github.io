export const SummaryView = () => {
  return (
    <div className="flex flex-col gap-4">
      <div>
        <img
          src="/images/IMG_3191.JPG"
          className="max-w-52"
          alt="photo of me"
        />
      </div>
      <div>
        <h1>Geoff Cramer</h1>
        <h2>Fullstack Developer</h2>
        <h3>M.S. in Computer Engineering</h3>
        <h4>gcwill70@gmail.com</h4>
      </div>
      <div className="flex flex-row gap-3 items-center">
        <a href="https://www.linkedin.com/in/geoff-cramer/" target="_blank">
          <img src="/images/ic_linked_in.png" alt="LinkedIn" className="w-10" />
        </a>
        <a href="https://github.com/gcwill70" target="_blank">
          <img src="/images/ic_github.png" alt="GitHub" className="w-10" />
        </a>
      </div>
    </div>
  );
};
