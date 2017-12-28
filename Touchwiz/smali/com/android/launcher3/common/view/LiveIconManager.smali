.class public Lcom/android/launcher3/common/view/LiveIconManager;
.super Ljava/lang/Object;
.source "LiveIconManager.java"


# static fields
.field public static final CALENDAR_ALARM_INTENT_NAME:Ljava/lang/String; = "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

.field public static final CLOCK_ALARM_INTENT_NAME:Ljava/lang/String; = "com.samsung.action.EVERY_MINUTE_CLOCK_UPDATE"

.field private static final DEFAULT_PACKAGE_NAME_ANDROID_CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field public static final DEFAULT_PACKAGE_NAME_CLOCK:Ljava/lang/String; = "com.sec.android.app.clockpackage"

.field private static final DEFAULT_PACKAGE_NAME_SAMSUNG_CALENDAR:Ljava/lang/String; = "com.samsung.android.calendar"

.field private static final TAG:Ljava/lang/String;

.field private static final sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

.field private static sFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;",
            "Lcom/android/launcher3/common/view/LiveIconFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/launcher3/common/view/LiveIconManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-direct {v0}, Lcom/android/launcher3/common/view/BitmapCacheContainer;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyKnoxLiveIcon(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 4
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const-string v3, "liveicon_cmpname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v1

    .line 200
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 201
    const/4 v1, 0x1

    .line 203
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static clearLiveIconCache(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->removeBitmapCache(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private static createLiveIconBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 136
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .local v1, "factoryKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    .line 138
    .local v0, "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    .end local v0    # "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconFactory;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 140
    .restart local v0    # "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/LiveIconFactory;->create(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static final getCalendarPackages()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconManager;->requestRefreshLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 93
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->getBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, "liveIconBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 102
    .end local v0    # "liveIconBitmap":Landroid/graphics/Bitmap;
    .local v1, "liveIconBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 99
    .end local v1    # "liveIconBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "liveIconBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconManager;->createLiveIconBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->putBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V

    .line 101
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->TAG:Ljava/lang/String;

    const-string v3, "getLiveIcon: complete(sync_created)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 102
    .end local v0    # "liveIconBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "liveIconBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static final getLiveIconPackages()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 53
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getFloatingClockPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 54
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCscClockPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isCalendarPackage(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 153
    :goto_0
    return v1

    .line 152
    :cond_0
    invoke-static {}, Lcom/android/launcher3/common/view/LiveIconManager;->getCalendarPackages()Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, "calendars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isKnoxLiveIcon(Landroid/content/Intent;)Z
    .locals 6
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-static {p0}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    const-string v4, "userid"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    .line 187
    .local v2, "userId":J
    const-string v4, "liveicon_cmpname"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v1

    .line 190
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 193
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v2    # "userId":J
    :cond_0
    return v1
.end method

.method public static isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 2
    .param p0, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 159
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isLiveIconPackage(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 170
    if-eqz p0, :cond_1

    .line 171
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object p0, v2, v1

    .line 175
    :cond_0
    invoke-static {}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIconPackages()Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "liveIconPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    const/4 v1, 0x1

    .line 180
    .end local v0    # "liveIconPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return v1
.end method

.method public static onResponseLiveIcon(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "liveIconBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    sget-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->putBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V

    .line 121
    sget-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->TAG:Ljava/lang/String;

    const-string v1, "onResponseLiveIcon: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method private static requestRefreshLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 108
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .local v1, "factoryKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    .line 110
    .local v0, "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    .end local v0    # "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconFactory;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 112
    .restart local v0    # "factory":Lcom/android/launcher3/common/view/LiveIconFactory;
    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/LiveIconFactory;->requestCreate(Landroid/content/Context;)Z

    .line 116
    return-void
.end method

.method public static setCalendarAlarm(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 217
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 218
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x8000000

    invoke-static {p0, v7, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 221
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 222
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->add(II)V

    .line 223
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 224
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 225
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 226
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 227
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 229
    .local v4, "tomorrowAtMillis":J
    invoke-virtual {v0, v7, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 230
    return-void
.end method

.method public static setClockAlarm(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 240
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 241
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.action.EVERY_MINUTE_CLOCK_UPDATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x8000000

    invoke-static {p0, v7, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 244
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 245
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v5, 0xc

    invoke-virtual {v1, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 246
    const/16 v5, 0xd

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/16 v5, 0xe

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 248
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 250
    .local v2, "nextMinuteAtMillis":J
    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 251
    return-void
.end method
