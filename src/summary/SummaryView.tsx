import Image from "next/image";

export const SummaryView = () => {
  return (
    <div className="flex flex-row xl:flex-col gap-4">
      <Image
        src="/images/profile_square.jpg"
        className="max-h-52 xl:hidden"
        alt="photo of me"
      />
      <Image
        src="/images/profile_tall.jpg"
        className="max-w-52 hidden xl:block"
        alt="photo of me"
      />
      <div className="flex flex-col gap-2">
        <div>
          <h1>Geoff Cramer</h1>
          <h2>Fullstack Developer</h2>
          <h3>M.S. in Computer Engineering</h3>
          <h4>gcwill70@gmail.com</h4>
        </div>
        <div className="flex flex-row gap-3">
          <a href="https://www.linkedin.com/in/geoff-cramer/" target="_blank">
            <Image
              src="/images/ic_linked_in.png"
              alt="LinkedIn"
              className="w-10"
            />
          </a>
          <a href="https://github.com/gcwill70" target="_blank">
            <Image src="/images/ic_github.png" alt="GitHub" className="w-10" />
          </a>
        </div>
      </div>
    </div>
  );
};
