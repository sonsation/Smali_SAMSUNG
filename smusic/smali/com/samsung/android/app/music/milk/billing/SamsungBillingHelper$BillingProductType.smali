.class final enum Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;
.super Ljava/lang/Enum;
.source "SamsungBillingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BillingProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

.field public static final enum DEFAULT:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

.field public static final enum SUBSCRIPTION:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

.field public static final enum TRACK:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->DEFAULT:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    const-string v1, "TRACK"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->TRACK:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    const-string v1, "SUBSCRIPTION"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->SUBSCRIPTION:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->DEFAULT:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->TRACK:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->SUBSCRIPTION:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->$VALUES:[Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->$VALUES:[Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    return-object v0
.end method
