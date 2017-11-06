.class public Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;
.super Ljava/lang/Object;
.source "NotificationUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;
    }
.end annotation


# static fields
.field private static final DEBUG_PERFORMANCE:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final REMOTE_TAG:I = 0x65

.field private static final REQUEST_CODE:I = 0x7010002

.field private static final REQUEST_CODE_FOR_KNOX:I = 0x7010003

.field private static final SUB_TAG:Ljava/lang/String; = "Notification: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsKnoxMode:Ljava/lang/Boolean;

.field private mIsNotificationVisible:Z

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLaunchIntentSet:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

.field private final mNotiManager:Landroid/app/NotificationManager;

.field private mNotification:Landroid/app/Notification;

.field private final mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

.field private mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;
    .param p3, "abstractionFactory"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotiManager:Landroid/app/NotificationManager;

    .line 88
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

    .line 89
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getLaunchIntentSet()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mLaunchIntentSet:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    .line 90
    return-void
.end method

.method private ensureNotification()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLaunchPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x65

    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mLaunchIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mLaunchIntentSet:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;->getLaunchIntentMusic(ZI)Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {p1, v3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 225
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object v1
.end method

.method private getNotificationId()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7010003

    :goto_0
    return v0

    :cond_0
    const v0, 0x7010002

    goto :goto_0
.end method

.method private isKnoxMode(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsKnoxMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 241
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsKnoxMode:Ljava/lang/Boolean;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsKnoxMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method final isNotificationVisible()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z

    return v0
.end method

.method final obtainNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)Landroid/app/Notification;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViewBuilder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .param p3, "isPlaying"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 96
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "notiBuilder":Landroid/app/Notification$Builder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    .line 99
    .local v1, "overN":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 100
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 101
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->buildBig()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 104
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 105
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

    .line 106
    invoke-interface {v2, p1, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;->buildNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    .line 108
    if-eqz v1, :cond_2

    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.mediaSession"

    .line 114
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->getSessionInstance(Landroid/content/Context;)Landroid/media/session/MediaSession;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    .line 113
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->getLaunchPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 121
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    return-object v2

    .line 97
    .end local v1    # "overN":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 116
    .restart local v1    # "overN":Z
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 117
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->buildBig()Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_1
.end method

.method final registerNotification()V
    .locals 4

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->ensureNotification()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->getNotificationId()I

    move-result v1

    .line 139
    .local v1, "id":I
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z

    .line 140
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;->registerNotification(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "SV-MediaCenter"

    const-string v3, "Notification: registerNotification : IllegalStateException occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final setUpNotification(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->ensureNotification()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    .line 178
    .local v0, "n":Landroid/app/Notification;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->isKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/Notification;->visibility:I

    goto :goto_0

    .line 182
    :cond_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->visibility:I

    goto :goto_0
.end method

.method final unregisterNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "Notification: unregisterNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z

    if-nez v0, :cond_0

    .line 154
    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "Notification:   - but already hidden state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 158
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;->unregisterNotification(Z)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotiManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->getNotificationId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method final updateNotification()V
    .locals 5

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->ensureNotification()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z

    if-nez v2, :cond_1

    .line 191
    const-string v2, "SMUSIC-SV-MediaCenter"

    const-string v3, "Notification: updateNotification() but it is hidden state."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->getNotificationId()I

    move-result v1

    .line 200
    .local v1, "id":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotiManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 201
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "SMUSIC-SV-MediaCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification: updateNotificationAlbumArt but fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
