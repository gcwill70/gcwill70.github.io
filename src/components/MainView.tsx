import Education from "@/components/Education";
import Experience from "@/components/Experience";
import Projects from "@/components/Projects";
import Publications from "@/components/Publications";

export default () => {
  return (
    <div className="space-y-12">
      <div className="space-y-3">
        <h1 className="text-3xl font-bold">About Me</h1>
        <p>
          Hi there! I&apos;m Geoff and I&apos;ve been software engineer since
          2018. I&apos;ve spent recent years working in web development and
          Trust &amp; Safety.
        </p>
      </div>

      <Publications />

      <Education />

      <Experience />

      <Projects />
    </div>
  );
};
