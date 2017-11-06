.class public Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreServerConstant;
.super Ljava/lang/Object;
.source "StoreMainConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/StoreMainConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreServerConstant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreServerConstant$BannerType;,
        Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreServerConstant$BannerLinkType;,
        Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreServerConstant$ContentType;,
        Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreServerConstant$DisplayType;
    }
.end annotation


# static fields
.field public static final DISPLAY_GROUP_BANNER:Ljava/lang/String; = "1"

.field public static final DISPLAY_GROUP_BANNER_SMALL:Ljava/lang/String; = "53"

.field public static final DISPLAY_GROUP_MUSIC_CATEGORY:Ljava/lang/String; = "9"

.field public static final DISPLAY_GROUP_MUSIC_VIDEO:Ljava/lang/String; = "6"

.field public static final DISPLAY_GROUP_NEW_RELEASE:Ljava/lang/String; = "3"

.field public static final DISPLAY_GROUP_PICK:Ljava/lang/String; = "4"

.field public static final DISPLAY_GROUP_RADIO:Ljava/lang/String; = "5"

.field public static final DISPLAY_GROUP_TOP_CHART:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreServerConstant;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreServerConstant;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCategoryTypeToServerGroupType(Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;)Ljava/lang/String;
    .locals 3
    .param p0, "storeMainGroupType"    # Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .prologue
    .line 61
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$1;->$SwitchMap$com$samsung$android$app$music$milk$store$StoreMainConstant$StoreMainGroupType:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported type !!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :pswitch_0
    const-string v0, "2"

    .line 72
    .local v0, "groupTypeStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 66
    .end local v0    # "groupTypeStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "3"

    .line 67
    .restart local v0    # "groupTypeStr":Ljava/lang/String;
    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromServerGroupTypeToCategoryType(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .locals 3
    .param p0, "groupTypeStr"    # Ljava/lang/String;
    .param p1, "displayTypeStr"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string v1, "53"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 56
    .local v0, "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :goto_0
    return-object v0

    .line 37
    .end local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .restart local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    goto :goto_0

    .line 39
    .end local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_1
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .restart local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    goto :goto_0

    .line 41
    .end local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_2
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .restart local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    goto :goto_0

    .line 43
    .end local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_3
    const-string v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->PICK:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .restart local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    goto :goto_0

    .line 45
    .end local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_4
    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->RADIO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .restart local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    goto :goto_0

    .line 47
    .end local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_5
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .restart local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    goto :goto_0

    .line 49
    .end local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_6
    const-string v1, "9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .restart local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    goto :goto_0

    .line 52
    .end local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_7
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreServerConstant;->TAG:Ljava/lang/String;

    const-string v2, "fromServerGroupTypeToCategoryType : storeMainGroupType is unknown"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    .restart local v0    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    goto :goto_0
.end method
