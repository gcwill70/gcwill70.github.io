import MainView from "@/components/MainView";
import { SkillsView } from "@/components/SkillsView";
import { SummaryView } from "@/components/SummaryView";

export default function Home() {
  return (
    <main className="min-h-screen flex flex-col md:flex-row justify-center items-center p-2 md:p-4 bg-gray-100 text-gray-900">
      <div className="max-w-screen-2xl p-2 flex flex-col md:flex-row items-stretch gap-7">
        <div className="max-w-fit md:flex-1">
          <SummaryView />
        </div>
        <div className="w-full md:flex-[3]">
          <MainView />
        </div>
        <div className="w-full md:flex-[1]">
          <SkillsView />
        </div>
      </div>
    </main>
  );
}
