"use client";

import React from "react";
import { AiOutlineMinus, AiOutlinePlus } from "react-icons/ai";
import { RiShoppingBagFill } from "react-icons/ri";
import { useCart } from "react-use-cart";
import Link from "next/link";
import Picture from "../picture/Picture";
import { FormatMoney2 } from "../Reusables/FormatMoney";
import { convertToSlug } from "@constants";

interface ProductCard2Props {
  id: string | number;
  image: string;
  oldAmount?: string;
  newAmount: string;
  description: string;
  boxShadow?: boolean;
}

const ProductCard2 = ({
  id,
  image,
  oldAmount,
  newAmount,
  description,
  boxShadow = true,
}: ProductCard2Props) => {
  const { addItem, removeItem, updateItem, getItem } = useCart();

  const ID = id.toString();
  const cartItem = getItem(ID);
  const quantity = cartItem?.quantity || 0;
  const price = parseInt(newAmount);
  const slugDesc = convertToSlug(description);

  // Calculate Discount Percentage
  const discount = oldAmount
    ? Math.round(((parseInt(oldAmount) - price) / parseInt(oldAmount)) * 100)
    : 0;

  const addToCart = () => {
    addItem({ id: ID, name: description, price, quantity: 1, image });
  };

  const increase = () => updateItem(ID, { quantity: quantity + 1 });
  const decrease = () => {
    if (quantity <= 1) removeItem(ID);
    else updateItem(ID, { quantity: quantity - 1 });
  };

  return (
    <div
      className={`relative w-[260px] rounded-2xl bg-white p-4 transition-all duration-300 ${
        boxShadow
          ? "shadow-[0_10px_30px_rgba(0,0,0,0.08)]"
          : "border border-gray-200"
      }`}
    >
      {/* Image Container */}
      <Link
        href={`/home-item/product/${slugDesc}-${id}`}
        className="relative flex items-center justify-center bg-[#F4F4F4] rounded-xl h-[180px] mb-4"
      >
        {/* Rating Badge (Static UI — does not affect functionality) */}
        {/* <div className="absolute top-3 left-3 bg-white text-xs font-semibold px-2 py-1 rounded-lg shadow-sm flex items-center gap-1">
          4.8 <span className="text-yellow-400">★</span>
        </div> */}

        <Picture
          src={image}
          alt={description}
          className="object-contain w-[85%] h-[85%]"
        />
      </Link>

      {/* Title + Right Tag */}
      <div className="flex justify-between items-start mb-2">
        <Link
          href={`/home-item/product/${slugDesc}-${id}`}
          className="text-[15px] font-semibold text-gray-800 line-clamp-2 leading-snug"
          dangerouslySetInnerHTML={{ __html: description }}
        />

        {/* Right side small label (matches 21K style) */}
        {/* {oldAmount && (
          <span className="text-sm font-semibold text-gray-700">
            {oldAmount}
          </span>
        )} */}
      </div>

      {/* Bottom Row */}
      <div className="flex items-center justify-between mt-2">
        {/* Price */}
        <div className="flex flex-col">
          <span className="text-[#97A402] text-lg font-bold">
            {price ? <FormatMoney2 value={price} /> : "N/A"}
          </span>
        </div>

        {/* Cart Controls */}
        {price > 0 && (
          <div>
            {quantity === 0 ? (
              <button
                onClick={(e) => {
                  e.preventDefault();
                  addToCart();
                }}
                className="w-10 h-10 flex items-center justify-center rounded-full bg-[#84A800] text-white shadow-md transition-all hover:scale-95"
              >
                <RiShoppingBagFill size={18} />
              </button>
            ) : (
              <div className="flex items-center gap-2 bg-gray-100 rounded-full px-2 py-1">
                <button
                  onClick={(e) => {
                    e.preventDefault();
                    decrease();
                  }}
                  className="w-7 h-7 flex items-center justify-center bg-white rounded-full shadow-sm"
                >
                  <AiOutlineMinus size={14} />
                </button>

                <span className="text-sm font-semibold">{quantity}</span>

                <button
                  onClick={(e) => {
                    e.preventDefault();
                    increase();
                  }}
                  className="w-7 h-7 flex items-center justify-center bg-[#97A402] text-white rounded-full"
                >
                  <AiOutlinePlus size={14} />
                </button>
              </div>
            )}
          </div>
        )}
      </div>
    </div>
  );
};

export default ProductCard2;
