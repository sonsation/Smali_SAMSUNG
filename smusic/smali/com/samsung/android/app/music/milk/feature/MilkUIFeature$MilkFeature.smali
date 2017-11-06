.class public final enum Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;
.super Ljava/lang/Enum;
.source "MilkUIFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MilkFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

.field public static final enum DormancyCount:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

.field public static final enum DownloadableUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

.field public static final enum DrmDownloadUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

.field public static final enum NotSupportedCountry:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

.field public static final enum PremiumUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

.field public static final enum StreamingUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    const-string v1, "PremiumUser"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->PremiumUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    new-instance v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    const-string v1, "StreamingUser"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->StreamingUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    new-instance v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    const-string v1, "DownloadableUser"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DownloadableUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    new-instance v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    const-string v1, "DrmDownloadUser"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DrmDownloadUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 51
    new-instance v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    const-string v1, "NotSupportedCountry"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->NotSupportedCountry:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    const-string v1, "DormancyCount"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DormancyCount:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->PremiumUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->StreamingUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DownloadableUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DrmDownloadUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->NotSupportedCountry:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DormancyCount:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->$VALUES:[Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->$VALUES:[Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    return-object v0
.end method
