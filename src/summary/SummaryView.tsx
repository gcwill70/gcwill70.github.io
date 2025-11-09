import Image from "next/image";

export const SummaryView = () => {
  return (
    <div className="flex flex-row md:flex-col gap-4">
      <Image
        src="/images/profile_square.jpg"
        width={208}
        height={208}
        className="max-h-52 md:hidden"
        alt="photo of me"
      />
      <Image
        src="/images/profile_tall.jpg"
        width={208}
        height={312}
        className="hidden md:block"
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
              width={40}
              height={40}
            />
          </a>
          <a href="https://github.com/gcwill70" target="_blank">
            <Image
              src="/images/ic_github.png"
              alt="GitHub"
              width={40}
              height={40}
            />
          </a>
        </div>
      </div>
    </div>
  );
};
