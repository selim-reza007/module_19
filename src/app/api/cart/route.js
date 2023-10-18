import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

const prisma = new PrismaClient();

export async function GET() {
    try {
        let result = await prisma.cart.findMany();

        return NextResponse.json({ status: "Succes", data: result })
    } catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}

export async function POST() {
    try {
        let result = await prisma.cart.create({
            data: {
                title: "t2 lll lll",
                sessionId: "t2 lll lll",
                token: "t2 lll lll",
                status: "t2 lll lll",
                firstName: "t2 lll lll",
                middleName: "t2 lll lll",
                lastName: "t2 lll lll",
                mobile: "t2 lll lll",
                email: "t2 lll lll",
                city: "t2 lll lll",
                country: "t2 lll lll",
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
        let result = await prisma.cart.update({
            where: { id: 2 },
            data: {
                token: "xxx yyy zzz"
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
        let result = await prisma.cart.delete({
            where: { id: 2 }
        });
        return NextResponse.json({ status: "Succes", data: result })
    }
    catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}

export async function PUT() { //this function implements transiction & rollback
    try {
        const addCart = prisma.cart.create({
            data: {
                title: "T&R 111 111 111",
                sessionId: "T&R 111 111 111",
                token: "T&R 111 111 111",
                status: "T&R 111 111 111",
                firstName: "T&R 111 111 111",
                middleName: "T&R 111 111 111",
                lastName: "T&R 111 111 111",
                mobile: "T&R 111 111 111",
                email: "T&R 111 111 111",
                city: "T&R 111 111 111",
                country: "T&R 111 111 111",
                User: { connect: { id: 1 } }
            }
        });

        const addCategory = prisma.category.create({
            data: {
                title: "T&R 111 111 111",
                metaTitle: "T&R 111 111 111",
                slug: "T&R 111 111 111",
                content: "T&R 111 111 111"
            }
        });

        const result = await prisma.$transaction([addCart, addCategory]);

        return NextResponse.json({ status: "Success", data: result });
    }
    catch (e) {
        return NextResponse.json({ status: "Fail", data: e });
    }
}