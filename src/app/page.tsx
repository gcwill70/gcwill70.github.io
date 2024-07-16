import { ExperiencesView } from "@/experiences/ExperiencesView";
import { SkillsView } from "@/skills/SkillsView";
import { SummaryView } from "@/summary/SummaryView";

export default function Home() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-between p-24">
      <div className="w-full flex flex-row">
        <div className="flex-1">
          <SummaryView />
        </div>
        <div className="flex-1">
          <ExperiencesView />
        </div>
        <div className="flex-1">
          <SkillsView />
        </div>
      </div>
    </main>
  );
}