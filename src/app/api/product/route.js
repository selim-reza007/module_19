import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

const prisma = new PrismaClient();

export async function GET() {
    try {
        let result = await prisma.product.findMany();

        return NextResponse.json({ status: "Succes", data: result })
    } catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}

export async function POST() {
    try {
        let result = await prisma.product.create({
            data: {
                firstName: "Konka Eletronics",
                metaTitle: "Smart TV",
                slug: "slug 1",
                summary: "f2 222 222 222",
                price: 50000,
                discount: 200,
                User: { connect: { id: 1 } }
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
        let result = await prisma.product.update({
            where: { id: 2 },
            data: {
                slug: "xyz zyx zxy"
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
        let result = await prisma.product.delete({
            where: { id: 2 }
        });
        return NextResponse.json({ status: "Succes", data: result })
    }
    catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}

export async function PUT() { //this function implements aggregate operations
    try {
        let result = await prisma.product.aggregate({
            _avg: { price: true },
            _count: { id: true },
            _sum: { price: true },
            _max: { price: true },
            _min: { price: true }
        });

        return NextResponse.json({ status: "Success", data: result });
    }
    catch (e) {
        return NextResponse.json({ status: "Fail", data: e })
    }
}

export async function OPTIONS() { //this function implements groupBy operation
    try {
        let result = await prisma.product.groupBy({
            by: ["metaTitle"],
            _count: { id: true },
            _avg: { price: true },
            _sum: { price: true },
            _min: { price: true },
            _max: { price: true }
        });

        return NextResponse.json({ status: "Success", data: result });
    }
    catch (e) {
        return NextResponse.json({ status: "Fail", data: e });
    }
}