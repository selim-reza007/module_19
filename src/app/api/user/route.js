import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

const prisma = new PrismaClient();

export async function GET() {
    try {
        let result = await prisma.user.findMany();

        return NextResponse.json({ status: "Succes", data: result })
    } catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}

export async function POST() {
    try {
        let result = await prisma.user.create({
            data: {
                firstName: "Muhammad",
                middleName: "Sagor",
                lastName: "Ali",
                mobile: "01855199808",
                email: "sagor@gmail.com",
                admin: 0,
                password: "fff111mm"
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
        let result = await prisma.user.update({
            where: { id: 3 },
            data: {
                admin: 0,
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
        let result = await prisma.user.delete({
            where: { id: 4 }
        });
        return NextResponse.json({ status: "Succes", data: result })
    }
    catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}