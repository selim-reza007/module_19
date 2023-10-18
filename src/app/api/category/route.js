import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

const prisma = new PrismaClient();

export async function GET() {
    try {
        let result = await prisma.category.findMany();

        return NextResponse.json({ status: "Succes", data: result })
    } catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}

export async function POST() {
    try {
        let result = await prisma.category.create({
            data: {
                title: "glossary item",
                metaTitle: "mmm mmm mmm ",
                slug: "mmm mmm mmm ",
                content: "ddd ddd ddd ddd ddd ddd"
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
        let result = await prisma.category.update({
            where: { id: 2 },
            data: {
                content: "b2b b2b b2b b2b"
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
        let result = await prisma.category.delete({
            where: { id: 3 }
        });
        return NextResponse.json({ status: "Succes", data: result })
    }
    catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}