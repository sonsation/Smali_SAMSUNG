.class public final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;
.super Ljava/lang/Object;
.source "HunNotificationUpdater.java"


# static fields
.field public static final ACTION_NOTI_BUTTON_CANCEL:Ljava/lang/String; = "com.samsung.android.app.music.intent.action.HUN_CANCEL_BUTTON"

.field public static final ACTION_NOTI_BUTTON_DONTSHOW:Ljava/lang/String; = "com.samsung.android.app.music.intent.action.HUN_DONT_SHOW_BUTTON"

.field public static final ACTION_NOTI_BUTTON_DOWNLOAD:Ljava/lang/String; = "com.samsung.android.app.music.intent.action.HUN_DOWNLOAD_BUTTON"

.field public static final ACTION_NOTI_DISMISS:Ljava/lang/String; = "com.samsung.android.app.music.intent.action.HUN_DISMISS"

.field private static final REQUEST_CODE:I = 0x7010005


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHunPreference:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hunPreference"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mHunPreference:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    .line 38
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const-string v1, "notification"

    .line 113
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 114
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x7010005

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 115
    return-void
.end method

.method private getNotiPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private setBrandName(Landroid/app/Notification$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 78
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->brand_name_for_jpn:I

    .line 79
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "brandName":Ljava/lang/String;
    :goto_0
    const-string v0, "android.substName"

    .line 82
    .local v0, "EXTRA_SUBSTITUTE_APP_NAME":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 83
    .local v2, "n":Landroid/app/Notification;
    iget-object v3, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.substName"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 84
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$color;->hun_brand_name:I

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, v2, Landroid/app/Notification;->color:I

    .line 86
    return-void

    .line 79
    .end local v0    # "EXTRA_SUBSTITUTE_APP_NAME":Ljava/lang/String;
    .end local v1    # "brandName":Ljava/lang/String;
    .end local v2    # "n":Landroid/app/Notification;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->brand_name:I

    .line 80
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setButtonAction(Landroid/app/Notification$Builder;Z)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "enabledDontShowBtn"    # Z

    .prologue
    const/4 v2, -0x1

    .line 89
    if-eqz p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->do_not_show_again:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.intent.action.HUN_DONT_SHOW_BUTTON"

    .line 91
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->getNotiPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 90
    invoke-virtual {p1, v2, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.intent.action.HUN_CANCEL_BUTTON"

    .line 94
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->getNotiPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 93
    invoke-virtual {p1, v2, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->download:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.intent.action.HUN_DOWNLOAD_BUTTON"

    .line 96
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->getNotiPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 95
    invoke-virtual {p1, v2, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 97
    return-void
.end method

.method private setHun(Landroid/app/Notification$Builder;Z)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "enabledDontShowBtn"    # Z

    .prologue
    const/4 v4, 0x2

    .line 100
    if-nez p2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mHunPreference:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    const-string v2, "notiCount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "notiCount":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mHunPreference:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    const-string v2, "notiCount"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->putInt(Ljava/lang/String;I)V

    .line 103
    if-ne v0, v4, :cond_0

    .line 104
    const-string v1, "com.samsung.android.app.music.intent.action.HUN_DISMISS"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->getNotiPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 105
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 106
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 109
    .end local v0    # "notiCount":I
    :cond_0
    return-void
.end method

.method private setIcon(Landroid/app/Notification$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 54
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->stat_notify_music:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$mipmap;->music_icon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 57
    return-void
.end method

.method private setStyle(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 60
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-eqz v3, :cond_0

    sget v2, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_quick_panel_notification_galaxy_download:I

    .line 63
    .local v2, "img":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 64
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 65
    .local v0, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 66
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 67
    return-void

    .line 60
    .end local v0    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "img":I
    :cond_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_quick_panel_notification_music_download:I

    goto :goto_0
.end method

.method private setTitle(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 70
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->hun_title_for_jpn:I

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->hun_sub_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 75
    return-void

    .line 71
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->hun_title:I

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createNotification(Z)V
    .locals 4
    .param p1, "enabledDontShowBtn"    # Z

    .prologue
    .line 41
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 43
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->setIcon(Landroid/app/Notification$Builder;)V

    .line 45
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->setStyle(Landroid/app/Notification$Builder;)V

    .line 46
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->setTitle(Landroid/app/Notification$Builder;)V

    .line 47
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->setBrandName(Landroid/app/Notification$Builder;)V

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->setHun(Landroid/app/Notification$Builder;Z)V

    .line 49
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->setButtonAction(Landroid/app/Notification$Builder;Z)V

    .line 50
    const v2, 0x7010005

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 51
    return-void
.end method
