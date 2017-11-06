.class public Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;
.super Ljava/lang/Object;
.source "NotificationUpdaterDelegate.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;


# instance fields
.field private final mService:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0
    .param p1, "serviceFacade"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->mService:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .line 22
    return-void
.end method

.method private buildNotificationLegacy(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "isPlaying"    # Z

    .prologue
    .line 46
    if-eqz p3, :cond_0

    .line 47
    const v0, 0x7f02036f

    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 51
    :goto_0
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    const v0, 0x7f02036e

    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private buildNotificationRecent(Landroid/content/Context;Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 56
    const v4, 0x7f02036d

    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v5}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    .line 57
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 59
    const-string v0, "android.substName"

    .line 60
    .local v0, "EXTRA_SUBSTITUTE_APP_NAME":Ljava/lang/String;
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0a0483

    .line 61
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "brandName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 66
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 67
    .local v2, "n":Landroid/app/Notification;
    iget-object v4, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.substName"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 68
    const v4, 0x7f11019d

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, v2, Landroid/app/Notification;->color:I

    .line 69
    return-object v2

    .line 61
    .end local v1    # "brandName":Ljava/lang/String;
    .end local v2    # "n":Landroid/app/Notification;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    const v4, 0x7f0a046d

    .line 62
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public buildNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "isPlaying"    # Z

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->buildNotificationRecent(Landroid/content/Context;Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->buildNotificationLegacy(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method public registerNotification(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "uniqueNotificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->mService:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->registerNotification(ILandroid/app/Notification;)V

    .line 27
    return-void
.end method

.method public unregisterNotification(Z)V
    .locals 1
    .param p1, "removeNotification"    # Z

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->mService:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->unregisterNotification(Z)V

    .line 32
    return-void
.end method
