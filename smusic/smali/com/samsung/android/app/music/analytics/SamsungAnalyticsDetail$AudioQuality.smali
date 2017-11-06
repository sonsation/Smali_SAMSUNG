.class public final enum Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;
.super Ljava/lang/Enum;
.source "SamsungAnalyticsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

.field public static final enum HIGH_320:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

.field public static final enum LOW_AAC:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

.field public static final enum MIDDLE_192:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;


# instance fields
.field private detail:Ljava/lang/String;

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    const-string v1, "HIGH_320"

    const-string v2, "320K"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->HIGH_320:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    const-string v1, "MIDDLE_192"

    const-string v2, "192K"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->MIDDLE_192:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    const-string v1, "LOW_AAC"

    const-string v2, "AAC+"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->LOW_AAC:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    .line 167
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->HIGH_320:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->MIDDLE_192:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->LOW_AAC:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->$VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "position"    # I
    .param p4, "detail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    iput p3, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->position:I

    .line 176
    iput-object p4, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->detail:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-class v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->$VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    return-object v0
.end method


# virtual methods
.method public getDetailValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->detail:Ljava/lang/String;

    return-object v0
.end method
