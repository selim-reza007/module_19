import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

const prisma = new PrismaClient();

export async function GET() {
    try {
        let result = await prisma.order.findMany();

        return NextResponse.json({ status: "Succes", data: result })
    } catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}

export async function POST() {
    try {
        let result = await prisma.order.create({
            data: {
                title: "t3 sss sss ss",
                token: "t3 sss sss ss",
                subTotal: 50,
                itemDiscount: 20,
                tax: 5,
                total: 45,
                discount: 2,
                grandTotal: 100,
                firstName: "t3 sss sss ss",
                middleName: "t3 sss sss ss",
                lastName: "t3 sss sss ss",
                mobile: "t3 sss sss ss",
                email: "t3 sss sss ss",
                email: "t3 sss sss ss",
                city: "t3 sss sss ss",
                country: "t3 sss sss ss",
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
        let result = await prisma.order.update({
            where: { id: 2 },
            data: {
                token: "xyz zyx zxy"
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
        let result = await prisma.order.delete({
            where: { id: 2 }
        });
        return NextResponse.json({ status: "Succes", data: result })
    }
    catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}