import { ExperiencesView } from "@/experiences/ExperiencesView";
import { SkillsView } from "@/skills/SkillsView";
import { SummaryView } from "@/summary/SummaryView";

export default function Home() {
  return (
    <main className="min-h-screen  flex flex-row justify-center p-4 bg-gray-100 text-gray-900">
      <div className="max-w-fit flex flex-col items-center justify-between p-4 bg-gray-100 text-gray-900">
        <div className="w-full flex flex-col xl:flex-row gap-4">
          <div className="max-w-fit">
            <SummaryView />
          </div>
          <div className="min-w-72">
            <ExperiencesView />
          </div>
          <div className="max-w-96">
            <SkillsView />
          </div>
        </div>
      </div>
    </main>
  );
}
