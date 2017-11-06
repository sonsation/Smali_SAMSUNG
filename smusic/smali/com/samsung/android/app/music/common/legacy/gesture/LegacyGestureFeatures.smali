.class public Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;
.super Ljava/lang/Object;
.source "LegacyGestureFeatures.java"


# static fields
.field private static final SUPPORT_PRODUCT_GROUP:[Ljava/lang/String;

.field private static final SUPPORT_PRODUCT_NAME:[Ljava/lang/String;

.field private static sSupportGestureAirMotion:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ja3g"

    aput-object v1, v0, v3

    const-string v1, "jalte"

    aput-object v1, v0, v4

    const-string v1, "jflte"

    aput-object v1, v0, v5

    const-string v1, "jactivelte"

    aput-object v1, v0, v6

    const-string v1, "jftdd"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "jfvelte"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jsglte"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "k3g"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "klte"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "kccat6xx"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ks01lte"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "h3g"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ha3g"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hlte"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hllte"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "htdlte"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SC-04F"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "SC-02G"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "SCL23"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SC-04E"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SC-02F"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "lentislte"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "slte"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->SUPPORT_PRODUCT_GROUP:[Ljava/lang/String;

    .line 20
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Madrid"

    aput-object v1, v0, v3

    const-string v1, "ASH"

    aput-object v1, v0, v4

    const-string v1, "SC-01F"

    aput-object v1, v0, v5

    const-string v1, "SCL22"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->SUPPORT_PRODUCT_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportGestureAirMotion()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SDL:Z

    if-nez v1, :cond_0

    .line 32
    :goto_0
    return v0

    .line 29
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->sSupportGestureAirMotion:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 30
    invoke-static {}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->isSupportProductGroup()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->isSupportProduct()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->sSupportGestureAirMotion:Ljava/lang/Boolean;

    .line 32
    :cond_3
    sget-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->sSupportGestureAirMotion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private static isSupportProduct()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 45
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->SUPPORT_PRODUCT_NAME:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    .local v0, "product":Ljava/lang/String;
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 46
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    const/4 v1, 0x1

    .line 50
    :cond_0
    return v1

    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static isSupportProductGroup()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->SUPPORT_PRODUCT_GROUP:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    .local v0, "product":Ljava/lang/String;
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 37
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    const/4 v1, 0x1

    .line 41
    :cond_0
    return v1

    .line 36
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
