"use client";
import React from "react";
import Link from "next/link";
import Picture from "@src/components/picture/Picture";
import {  machineImage } from "@public/images";
import img7 from "../../../../public/images/img7.png"

const MachineMaintenance = () => {
  return (
    <section className="w-full grid grid-cols-1 md:grid-cols-2 min-h-[800px] bg-white overflow-hidden">
      {/* 1. Content Section (Left) */}
      <div className="bg-[#FFFFFF] flex flex-col justify-center p-8 sm:p-12 md:p-16 lg:p-24 space-y-8">
        {/* Main Heading */}
        <h2 className="text-3xl sm:text-4xl md:text-5xl font-medium text-black ">
          Our products are 100% guarantee to last for at least 10 years.
        </h2>


        {/* Action Button */}
        <button
          className=" bg-[#97A402] text-[#fff] font-bold w-fit px-5 py-3 rounded-sm hover:opacity-[0.8] transition-all active:scale-95 shadow-lg"
        >
          SHOP ALL
        </button>
      </div>

      {/* 2. Visual Section (Right) */}
      <div className="relative h-[350px] md:h-auto">
        <Picture
          src={img7} // Path to your hardware image
          alt="Close up of internal computer components"
          className="w-full h-full object-cover"
        />

        {/* Subtle overlay for mobile to improve contrast if text overlaps */}
        <div className="absolute inset-0 bg-black/5 md:hidden" />
      </div>
    </section>
  );
};

export default MachineMaintenance;
