import Education from "@/components/Education";
import Experience from "@/components/Experience";
import Projects from "@/components/Projects";
import Publications from "@/components/Publications";

export default function MainView() {
  return (
    <div className="space-y-12">
      <div className="space-y-3">
        <h1 className="text-3xl font-bold">About Me</h1>
        <p>
          Software Engineer with specialization in Trust & Safety. Driven to
          make platforms safer and fight abuse.
        </p>
      </div>

      {/* <div>
        <h2 className="text-2xl font-semibold">Hobbies</h2>
        <p>
          ⛳️ Golfing
          <br />
          🧙‍♂️ World of Warcraft
          <br />
          🥾 Hiking
          <br />
          🥘 Eating spicy food
          <br />
          🏀 Basketball nerd (Purdue & Pacers)
          <br />
          🎸 Rock Band 4<br />
          👟 Running
        </p>
      </div> */}

      <Publications />

      <Education />

      <Experience />

      <Projects />
    </div>
  );
}
