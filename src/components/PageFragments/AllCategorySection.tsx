"use client";
import React, { useEffect, useRef, useState } from "react";

import Picture from "../picture/Picture";
import { useCategories, WooCommerce } from "../lib/woocommerce";
import ProductCard from "../Cards/ProductCard";
import HomeCard from "../Cards/HomeCard";
import Carousel from "../Reusables/Carousel";
import Link from "next/link";
import { convertToSlug, convertToSlug2 } from "@constants";
import { useEncryptionHelper } from "../EncryptedData";
import { useDispatch } from "react-redux";
import { updateCategorySlugId } from "../config/features/subCategoryId";
import { useRouter } from "next/navigation";
import { heroBg, heroImage, heroImage2, heroImage3 } from "@public/images";
import HeroCarousel from "../Cards/HeroCarousel";
import laptop from "../../../public/images/img1.png";
import img2 from "../../../public/images/img2.png";
import img3 from "../../../public/images/img3.png";
import img4 from "../../../public/images/img4.png";
import img5 from "../../../public/images/img5.png";
import img6 from "../../../public/images/img6.png";
const AllCategorySection = () => {
  const sliderRef = useRef<HTMLDivElement>(null);
  const [maxScrollTotal, setMaxScrollTotal] = useState(0);
  const [scrollLeftTotal, setScrollLeftTotal] = useState(0);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const dispatch = useDispatch();
  const router = useRouter();

  // State to hold products by category
  const [categoryProductsMap, setCategoryProductsMap] = useState<{
    [key: string]: ProductType[];
  }>({});
  // WooCommerce API Category
  const {
    data: categories,
    isLoading: categoryWpIsLoading,
    isError: categoryIsError,
  } = useCategories("");

  const Categories: CategoryType[] = categories;
  const TotalCatgory = Categories?.length - 1;

  useEffect(() => {
    const fetchCategoryProducts = async () => {
      try {
        setIsLoading(true);

        const filteredCategories = categories
          ?.filter((category: CategoryType) => category?.count > 0)
          ?.slice(0, 5);

        if (filteredCategories) {
          const productsPromises = filteredCategories.map(
            async (category: CategoryType) => {
              const response = await WooCommerce.get(
                `products?category=${category?.id}`,
              );

              // Check if there is at least one product in the category
              const firstProductImage =
                response?.data.length > 0
                  ? response?.data[0]?.images[0]?.src
                  : null;

              return {
                categoryId: category?.id,
                firstProductImage: firstProductImage, // Store the first product's image
              };
            },
          );

          const productsResults = await Promise.all(productsPromises);

          // Update the state with the first product images mapped by category
          const productsMap = productsResults.reduce(
            (acc: any, result: any) => ({
              ...acc,
              [result.categoryId]: result.firstProductImage,
            }),
            {},
          );

          setCategoryProductsMap(productsMap);
        }
      } catch (error) {
        console.error("Error fetching category products:", error);
      } finally {
        setIsLoading(false);
      }
    };

    if (categories?.length) {
      fetchCategoryProducts();
    }
  }, [categories]);

  const handleNext = () => {
    if (sliderRef.current) {
      const { scrollLeft, scrollWidth, clientWidth } = sliderRef.current;
      const maxScroll = scrollWidth - clientWidth;
      setScrollLeftTotal(scrollLeft);
      setMaxScrollTotal(maxScroll);

      sliderRef.current.scrollLeft += 600; // Adjust the scroll distance as needed
      setCurrentIndex((prevIndex) =>
        prevIndex < TotalCatgory - 1 ? prevIndex + 1 : prevIndex,
      );
    }
  };

  const handlePrev = () => {
    if (sliderRef.current) {
      const { scrollLeft, scrollWidth, clientWidth } = sliderRef.current;
      const maxScroll = scrollWidth - clientWidth;
      setScrollLeftTotal(scrollLeft);
      setMaxScrollTotal(maxScroll);
      // console.log(scrollLeft);
      if (scrollLeft > 0) {
        sliderRef.current.scrollLeft -= 600; // Adjust the scroll distance as needed
        setCurrentIndex((prevIndex) =>
          prevIndex > 0 ? prevIndex - 1 : prevIndex,
        );
      }
    }
  };

  return (
    <>
      {/* Hero Concept inspired by the image */}
      <div className="relative  mt-[100px] max-w-[1350px] mx-auto md:h-[652px] overflow-hidden pb-8 bg-[#EDEDF5]">
        <div className="flex flex-col md:flex-row justify-between h-full w-full gap-2">
          <div className="mt-[100px] md:mt-[200px] max-w-[500px] pl-10 pb-[5px]">
            <h1 className="text-black text-2xl md:text-5xl">
              Buy Your Top Notch Accessories
            </h1>
            <p className="my-[30px]">
              They say that home is where the heart is. Perhaps that’s why a
              feeling of loss is so apparent when you are far from the ones you
              love.
            </p>
            <button className="bg-black  px-5 py-3 text-[#EAF586] rounded-md hover:opacity-[0.8]">
              Order Now
            </button>
          </div>
          <div>
            <Picture className="h-full !w-[491px]" src={img2} alt="laptop" />
          </div>
          <div>
            <Picture className="h-full md:!w-[384px]" src={laptop} alt="img2" />
          </div>
        </div>
      </div>
      {/* Category Section Styling Idea */}
      <div className="grid grid-cols-2 md:grid-cols-4 items-center mx-auto max-w-[1350px] gap-3 bg-white w-[80%] h-[300px] md:h-[205px]">
        <div className="text-center">
          <Picture className="h-[50px] w-[50px] m-auto" src={img6} alt="img6" />
          <h4 className="font-bold ">Secure Payment</h4>
          <h5>100% secure payment</h5>
        </div>
        <div className="text-center">
          <Picture className="h-[50px] w-[50px] m-auto" src={img4} alt="img6" />
          <h4 className="font-bold ">30 Days Return</h4>
          <h5>If goods have problems</h5>
        </div>
        <div className="text-center">
          <Picture className="h-[50px] w-[50px] m-auto" src={img5} alt="img6" />
          <h4 className="font-bold ">24/7 Support</h4>
          <h5>Dedicated support</h5>
        </div>
        <div className="text-center">
          <Picture className="h-[50px] w-[50px] m-auto" src={img3} alt="img6" />
          <h4 className="font-bold ">Free Delivery</h4>
          <h5>For all order over 80$</h5>
        </div>

        {/* {Categories?.slice(0, 5).map((cat) => {
          const productImage: any = categoryProductsMap[cat?.id];
          return (
            <Link
              key={cat.id}
              href={`/category/${convertToSlug(cat.name)}-${cat.id}`}
              className="group relative h-48 bg-[#111] rounded-2xl overflow-hidden border border-white/5 hover:border-blue-500/50 transition-all"
            >
              <Picture
                src={cat.image?.src ?? productImage}
                alt={cat.image?.name}
                className="w-full h-full object-contain opacity-60 group-hover:scale-110 transition-transform duration-700"
              />

              <div className="absolute bottom-4 left-4">
                <h3 className="text-lg font-bold text-white uppercase">
                  {cat.name}
                </h3>
              </div>
            </Link>
          );
        })} */}
      </div>

      {/* </Carousel> */}
    </>
  );
};

export default AllCategorySection;
