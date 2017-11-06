.class public final enum Lorg/brickred/socialauth/util/MethodType;
.super Ljava/lang/Enum;
.source "MethodType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/brickred/socialauth/util/MethodType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lorg/brickred/socialauth/util/MethodType;

.field private static final synthetic ENUM$VALUES:[Lorg/brickred/socialauth/util/MethodType;

.field public static final enum GET:Lorg/brickred/socialauth/util/MethodType;

.field public static final enum POST:Lorg/brickred/socialauth/util/MethodType;

.field public static final enum PUT:Lorg/brickred/socialauth/util/MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lorg/brickred/socialauth/util/MethodType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/util/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    new-instance v0, Lorg/brickred/socialauth/util/MethodType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lorg/brickred/socialauth/util/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    new-instance v0, Lorg/brickred/socialauth/util/MethodType;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lorg/brickred/socialauth/util/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    new-instance v0, Lorg/brickred/socialauth/util/MethodType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lorg/brickred/socialauth/util/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brickred/socialauth/util/MethodType;->DELETE:Lorg/brickred/socialauth/util/MethodType;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/brickred/socialauth/util/MethodType;

    sget-object v1, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/brickred/socialauth/util/MethodType;->DELETE:Lorg/brickred/socialauth/util/MethodType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/brickred/socialauth/util/MethodType;->ENUM$VALUES:[Lorg/brickred/socialauth/util/MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/brickred/socialauth/util/MethodType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/brickred/socialauth/util/MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/brickred/socialauth/util/MethodType;

    return-object v0
.end method

.method public static values()[Lorg/brickred/socialauth/util/MethodType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->ENUM$VALUES:[Lorg/brickred/socialauth/util/MethodType;

    array-length v1, v0

    new-array v2, v1, [Lorg/brickred/socialauth/util/MethodType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
