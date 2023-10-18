import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

const prisma = new PrismaClient();

export async function GET() {
    try {
        let result = await prisma.product_Review.findMany();

        return NextResponse.json({ status: "Succes", data: result })
    } catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}

export async function POST() {
    try {
        let result = await prisma.product_Review.create({
            data: {
                title: "t33 333 333",
                rating: "t33 333 333",
                content: "t33 333 333",
                Product: { connect: { id: 1 } }
            }
        });
        return NextResponse.json({ status: "Succes", data: result })
    }
    catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}

export async function PATCH() {
    try {
        let result = await prisma.product_Review.update({
            where: { id: 2 },
            data: {
                content: "xyz zyx zxy"
            }
        });
        return NextResponse.json({ status: "Succes", data: result })
    }
    catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}

export async function DELETE() {
    try {
        let result = await prisma.product_Review.delete({
            where: { id: 2 }
        });
        return NextResponse.json({ status: "Succes", data: result })
    }
    catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}