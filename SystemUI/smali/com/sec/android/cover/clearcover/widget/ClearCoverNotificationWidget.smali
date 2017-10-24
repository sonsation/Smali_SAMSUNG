.class public Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;
.super Landroid/widget/LinearLayout;
.source "ClearCoverNotificationWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$1;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$2;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ExpandRunnable;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

.field private mDisplayedNotificationCount:I

.field private mExpandNotificationDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

.field private mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mExpandNotificationDelay:I

    return v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;)Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mExpandNotificationDelay:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->updateNotifications()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mHandler:Landroid/os/Handler;

    .line 53
    const/16 v0, 0x578

    iput v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mExpandNotificationDelay:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    .line 58
    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$1;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 77
    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$2;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 87
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 85
    return-void
.end method

.method private getApplicatioName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pmUser"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 315
    const-string/jumbo v0, ""

    .line 319
    .local v0, "appName":Ljava/lang/String;
    const/16 v3, 0x2200

    .line 318
    :try_start_0
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 320
    .local v1, "cacheInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    .end local v1    # "cacheInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Name not found for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getGroupNotificationsSummaries([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;
    .locals 6
    .param p1, "notifications"    # [Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 259
    .local v1, "sb":Landroid/service/notification/StatusBarNotification;
    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->isValidNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 264
    .end local v1    # "sb":Landroid/service/notification/StatusBarNotification;
    :cond_2
    return-object v0
.end method

.method private getNotificationIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p1, "sb"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 241
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method private initializeNotifications()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 122
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initializeNotifications()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-array v2, v5, [Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    .line 125
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 126
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 127
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    .line 128
    sget v2, Lcom/sec/android/sviewcover/R$layout;->clear_cover_notification_item:I

    const/4 v4, 0x0

    .line 127
    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aput-object v2, v3, v0

    .line 129
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    .line 130
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->addView(Landroid/view/View;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v2

    new-instance v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$3;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$3;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->setCoverNotificationListener(Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;)V

    .line 141
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->updateNotifications()V

    .line 121
    return-void
.end method

.method private isValidNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6
    .param p1, "sb"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    .line 275
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 276
    .local v2, "notiUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 277
    .local v0, "currentUserId":I
    if-nez v0, :cond_1

    const/16 v3, 0x96

    if-lt v2, v3, :cond_1

    .line 278
    const/16 v3, 0xa0

    if-gt v2, v3, :cond_1

    .line 279
    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Showing Secure folder noti on owner user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 285
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    if-nez v1, :cond_2

    .line 286
    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Skiping notification with invalid icon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v5

    .line 280
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    :cond_1
    if-eq v2, v0, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 281
    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Skiping notification from other user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v5

    .line 289
    .restart local v1    # "icon":Landroid/graphics/drawable/Icon;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private updateNotifications()V
    .locals 20

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    .line 146
    .local v9, "notifications":[Landroid/service/notification/StatusBarNotification;
    if-nez v9, :cond_3

    .line 147
    sget-object v14, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateNotifications(): notifications == null: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v9, :cond_2

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    if-eqz v13, :cond_1

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    if-eqz v13, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;->onDisplayedNotificationCount(II)V

    .line 152
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    .line 154
    :cond_1
    return-void

    .line 147
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 157
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v13

    .line 158
    const-string/jumbo v14, "lock_screen_show_notifications"

    const/4 v15, 0x0

    .line 157
    invoke-virtual {v13, v14, v15}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getSecureInt(Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_7

    const/4 v4, 0x1

    .line 160
    .local v4, "enableNoti":Z
    :goto_1
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/cover/CoverUtils;->isUsimDownloadTopActivity(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 161
    :cond_4
    sget-object v13, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "updateNotifications(): Notifications disabled on lockscreen"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setVisibility(I)V

    .line 163
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    if-eqz v13, :cond_6

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    if-eqz v13, :cond_5

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;->onDisplayedNotificationCount(II)V

    .line 167
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    .line 169
    :cond_6
    return-void

    .line 157
    .end local v4    # "enableNoti":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 172
    .restart local v4    # "enableNoti":Z
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getGroupNotificationsSummaries([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object v8

    .line 173
    .local v8, "mGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setVisibility(I)V

    .line 174
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 175
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 176
    .local v3, "count":I
    const/4 v13, 0x0

    array-length v14, v9

    :goto_2
    if-ge v13, v14, :cond_e

    aget-object v11, v9, v13

    .line 177
    .local v11, "sb":Landroid/service/notification/StatusBarNotification;
    sget-object v15, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Processing notification: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v15

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->isLockScreenEnabledPkg(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 179
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->isValidNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 176
    :cond_9
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 182
    :cond_a
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "groupKey":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 184
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 185
    .local v12, "summaryKey":Ljava/lang/String;
    if-eqz v12, :cond_b

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 190
    .end local v12    # "summaryKey":Ljava/lang/String;
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 191
    const/4 v15, 0x4

    if-gt v3, v15, :cond_9

    .line 194
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getNotificationIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 195
    .local v7, "icon":Landroid/graphics/drawable/Icon;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    add-int/lit8 v16, v3, -0x1

    aget-object v15, v15, v16

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    add-int/lit8 v16, v3, -0x1

    aget-object v15, v15, v16

    invoke-virtual {v15, v7}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    add-int/lit8 v16, v3, -0x1

    aget-object v15, v15, v16

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->minimized_notification_talkback_description_open:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 197
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 199
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getApplicatioName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    .line 197
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget-object v15, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v15, :cond_d

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    add-int/lit8 v16, v3, -0x1

    aget-object v15, v15, v16

    .line 202
    new-instance v16, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;

    new-instance v17, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

    sget-object v18, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->NOTIFICATION:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v11}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;Landroid/service/notification/StatusBarNotification;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;)V

    .line 201
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 186
    .end local v7    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v12    # "summaryKey":Ljava/lang/String;
    :cond_c
    sget-object v15, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Notification for group "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " is not "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 204
    .end local v12    # "summaryKey":Ljava/lang/String;
    .restart local v7    # "icon":Landroid/graphics/drawable/Icon;
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    add-int/lit8 v16, v3, -0x1

    aget-object v15, v15, v16

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 209
    .end local v5    # "groupKey":Ljava/lang/String;
    .end local v7    # "icon":Landroid/graphics/drawable/Icon;
    .end local v11    # "sb":Landroid/service/notification/StatusBarNotification;
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    if-eq v3, v13, :cond_10

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    if-eqz v13, :cond_f

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    invoke-interface {v13, v14, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;->onDisplayedNotificationCount(II)V

    .line 213
    :cond_f
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    .line 216
    :cond_10
    const/4 v13, 0x4

    if-le v3, v13, :cond_12

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v14, 0x3

    aget-object v13, v13, v14

    .line 219
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v3, -0x3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 218
    invoke-virtual {v13, v14}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setText(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v14, 0x3

    aget-object v13, v13, v14

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v14, 0x3

    aget-object v13, v13, v14

    .line 222
    new-instance v14, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;

    new-instance v15, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

    sget-object v16, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->EXPAND:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v15, v0, v1, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;Landroid/service/notification/StatusBarNotification;)V

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;)V

    .line 221
    invoke-virtual {v13, v14}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v14, 0x3

    aget-object v13, v13, v14

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/sec/android/sviewcover/R$string;->minimized_notification_talkback_description_open_more:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 223
    invoke-virtual {v13, v14}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    :cond_11
    return-void

    .line 227
    :cond_12
    move v6, v3

    .local v6, "i":I
    :goto_4
    const/4 v13, 0x4

    if-ge v6, v13, :cond_11

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v13, v13, v6

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getDisplayedNotificationCount()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    return v0
.end method

.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    .line 299
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 305
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x4

    .line 304
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 311
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    .line 306
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 98
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 96
    return-void
.end method

.method public onCoverOpen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;->onCoverOpened()V

    .line 117
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

    .line 110
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 106
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 104
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->initializeNotifications()V

    .line 91
    return-void
.end method

.method public setDisplayedNotificationCounChangeListener(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    .line 404
    return-void
.end method
