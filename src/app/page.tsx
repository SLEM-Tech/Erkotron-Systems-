import AppLayout from "@src/components/AppLayout";
import AllCategorySection from "@src/components/PageFragments/AllCategorySection";
import SortedProducts from "./(Home)/_components/SortedProducts";
import { SEODATA } from "@constants/seoContants";
import { Metadata } from "next";
import AppMenu from "@src/components/Navbars/AppMenu";
import FaqAccordion from "@src/components/Reusables/Accordion/FaqAccordion";
import MachineMaintenance from "./(Home)/_components/MachineMaintenance";
import Link from "next/link";

const { description, title, ogImage, keywords } = SEODATA.home;
export const metadata: Metadata = {
  title: title,
  description: description,
  keywords: keywords,
  icons: ogImage,
  openGraph: {
    images: [
      {
        url: ogImage ?? "",
      },
    ],
  },
};

const page = () => {
  return (
    <AppLayout>
      <AllCategorySection />
      <div className="mx-auto pl-2 mt-4">
        <SortedProducts />
      </div>
      <MachineMaintenance />
      <div className="pt-4 px-2 sm:px-0 mx-auto bg-black h-[474px] max-w-full mt-6 sm:mt-12">
        <article className="text-white w-[80%] md:w-[60%] m-auto mt-[100px] text-center">
          <h2 className="text-2xl md:text-5xl">
            Get started for free in 10 minutes
          </h2>
          <div className="w-[80%] md:w-[70%] m-auto mt-[30px]">
            <p>
              Get all the best technology services for your business growth for
              free. <br />
              Open the last current account you will ever need for your business
            </p>
            <div className="mt-[50px]">
              <Link
                href="/user/login"
                className="bg-[#97A402] md:w-[200px] px-5 py-3 text-[#fff] rounded-md hover:opacity-[0.8]"
              >
                Get Started
              </Link>
            </div>
          </div>
        </article>
      </div>
      {/* <AppMenu /> */}
    </AppLayout>
  );
};

export default page;
