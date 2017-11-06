.class public final enum Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;
.super Ljava/lang/Enum;
.source "SamsungAnalyticsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaySetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

.field public static final enum ALL_SONG:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

.field public static final enum SELECTED_SONG:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;


# instance fields
.field private detail:Ljava/lang/String;

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    const-string v1, "ALL_SONG"

    const-string v2, "All song"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->ALL_SONG:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    const-string v1, "SELECTED_SONG"

    const-string v2, "Selected song"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->SELECTED_SONG:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    .line 144
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->ALL_SONG:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->SELECTED_SONG:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->$VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

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
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput p3, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->position:I

    .line 153
    iput-object p4, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->detail:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public static getDetailByPosition(I)Ljava/lang/String;
    .locals 5
    .param p0, "position"    # I

    .prologue
    .line 157
    invoke-static {}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->values()[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 158
    .local v0, "value":Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;
    iget v4, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->position:I

    if-ne p0, v4, :cond_0

    .line 159
    iget-object v1, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->detail:Ljava/lang/String;

    .line 163
    .end local v0    # "value":Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;
    :goto_1
    return-object v1

    .line 157
    .restart local v0    # "value":Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "value":Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    const-class v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->$VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;

    return-object v0
.end method
