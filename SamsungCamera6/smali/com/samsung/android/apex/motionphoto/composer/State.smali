.class public final enum Lcom/samsung/android/apex/motionphoto/composer/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/apex/motionphoto/composer/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum INITIAL:Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->INITIAL:Lcom/samsung/android/apex/motionphoto/composer/State;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v1, "RELEASED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->INITIAL:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->$VALUES:[Lcom/samsung/android/apex/motionphoto/composer/State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/State;
    .locals 1

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/apex/motionphoto/composer/State;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->$VALUES:[Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v0}, [Lcom/samsung/android/apex/motionphoto/composer/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/apex/motionphoto/composer/State;

    return-object v0
.end method
