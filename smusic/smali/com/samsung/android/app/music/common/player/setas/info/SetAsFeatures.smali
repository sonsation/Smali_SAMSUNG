.class public Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;
.super Ljava/lang/Object;
.source "SetAsFeatures.java"


# static fields
.field private static final SUUPORT_PRODUCTS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sIsFeatureOn:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->TAG:Ljava/lang/String;

    .line 19
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "jfvelte"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ja3g"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "jftdd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "jflte"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "jsglte"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ks01lte"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jalte"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jfwifi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "jactivelte"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "jgedlte"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "kccat6"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "klte"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "k3g"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "kvolte"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "s5velte"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "kwifi"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lentislte"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "kactivelte"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ha3g"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hl3g"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hlte"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hllte"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "htdlte"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "frescolte"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "trlte"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "trelte"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "trhplte"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "tre3g"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "tblte"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "tbelte"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "tre3calte"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->SUUPORT_PRODUCTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAlarmtoneFeatureOn(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "alarm://com.sec.android.app.clockpackage/alarmlist/"

    .line 68
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 70
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    .line 71
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 73
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v5, :cond_0

    .line 74
    const/4 v4, 0x1

    .line 77
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isFeatureOn(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 33
    sget-object v5, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->sIsFeatureOn:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 34
    sget-object v4, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->sIsFeatureOn:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 54
    :goto_0
    return v1

    .line 36
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->sIsFeatureOn:Ljava/lang/Boolean;

    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .local v3, "osVersion":I
    const/16 v5, 0x18

    if-lt v3, v5, :cond_1

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->sIsFeatureOn:Ljava/lang/Boolean;

    goto :goto_0

    .line 42
    :cond_1
    const/16 v5, 0x15

    if-lt v3, v5, :cond_3

    const/16 v5, 0x17

    if-gt v3, v5, :cond_3

    .line 44
    .local v1, "isSupportOSVersion":Z
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->isSupportedProduct()Z

    move-result v2

    .line 45
    .local v2, "isSupportProduct":Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 46
    invoke-static {p0}, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->checkAlarmtoneFeatureOn(Landroid/content/Context;)Z

    move-result v0

    .line 47
    .local v0, "isAlarmtoneFeatureOn":Z
    sget-object v4, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Model : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Highlight Setting Feature On : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Alarm Ringtone Feature On : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->sIsFeatureOn:Ljava/lang/Boolean;

    .line 54
    .end local v0    # "isAlarmtoneFeatureOn":Z
    :cond_2
    sget-object v4, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->sIsFeatureOn:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .end local v1    # "isSupportOSVersion":Z
    .end local v2    # "isSupportProduct":Z
    :cond_3
    move v1, v4

    .line 42
    goto :goto_1
.end method

.method private static isSupportedProduct()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-object v3, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->SUUPORT_PRODUCTS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    .local v0, "product":Ljava/lang/String;
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 59
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    const/4 v1, 0x1

    .line 63
    :cond_0
    return v1

    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
