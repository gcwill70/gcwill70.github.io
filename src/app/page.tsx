import { ExperiencesView } from "@/experiences/ExperiencesView";
import { SkillsView } from "@/skills/SkillsView";
import { SummaryView } from "@/summary/SummaryView";

export default function Home() {
  return (
    <main className="min-h-screen flex flex-col md:flex-row justify-center items-center p-2 md:p-4 bg-gray-100 text-gray-900">
      <div className="w-full max-w-6xl flex flex-col md:flex-row items-stretch gap-4 md:gap-8 p-2 md:p-4">
        <div className="w-full md:max-w-xs mb-4 md:mb-0">
          <SummaryView />
        </div>
        <div className="w-full md:min-w-[22rem] mb-4 md:mb-0">
          <ExperiencesView />
        </div>
        <div className="w-full md:max-w-md">
          <SkillsView />
        </div>
      </div>
    </main>
  );
}
