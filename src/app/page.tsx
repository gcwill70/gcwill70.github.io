import MainView from "@/components/MainView";
import { SummaryView } from "@/components/SummaryView";

export default function Home() {
  return (
    <main className="min-h-screen flex flex-col lg:flex-row justify-center items-center p-2 lg:p-4 bg-gray-100 text-gray-900">
      <div className="max-w-screen-2xl p-2 flex flex-col lg:flex-row items-stretch gap-7">
        <div className="lg:flex-1">
          <SummaryView />
        </div>
        <div className="w-full lg:flex-[3]">
          <MainView />
        </div>
        {/* <div className="w-full lg:flex-[1]">
          <SkillsView />
        </div> */}
      </div>
    </main>
  );
}
