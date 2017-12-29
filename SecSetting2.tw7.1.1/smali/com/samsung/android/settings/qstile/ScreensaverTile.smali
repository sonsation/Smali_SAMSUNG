.class public Lcom/samsung/android/settings/qstile/ScreensaverTile;
.super Landroid/service/quicksettings/TileService;
.source "ScreensaverTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;
    }
.end annotation


# static fields
.field private static final SCREENSAVER_SETTINGS:Landroid/content/Intent;

.field private static selecetingscreensaver:I

.field private static selectedscreensaver:I


# instance fields
.field private final ACTION_SCREEN_SAVER_DEFAULT:Ljava/lang/String;

.field private mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

.field private screensaverSize:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/qstile/ScreensaverTile;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/qstile/ScreensaverTile;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->screensaverSize:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selectedscreensaver:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$DreamSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->SCREENSAVER_SETTINGS:Landroid/content/Intent;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 42
    const-string/jumbo v0, "com.android.settings.screensavertile.intent.action.SCREEN_SAVER_CHANGED"

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->ACTION_SCREEN_SAVER_DEFAULT:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    .line 39
    return-void
.end method

.method private getTileState()I
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    .line 88
    .local v0, "value":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initTile()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 93
    .local v0, "tile":Landroid/service/quicksettings/Tile;
    if-eqz v0, :cond_0

    .line 94
    const v1, 0x7f0204a9

    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 95
    const v1, 0x7f0b166e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getTileState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 97
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 91
    :cond_0
    return-void
.end method

.method private refreshScreensaver()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 103
    .local v0, "tile":Landroid/service/quicksettings/Tile;
    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getTileState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 105
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 101
    :cond_0
    return-void
.end method

.method private registerReceiver(Z)V
    .locals 7
    .param p1, "register"    # Z

    .prologue
    const/4 v6, 0x0

    .line 183
    if-eqz p1, :cond_2

    .line 184
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v3}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 187
    .local v0, "ScreensaverSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 188
    const-string/jumbo v3, "ScreensaverTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "com.android.settings.screensavertile.intent.action.SCREEN_SAVER_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "com.android.settings.screensavertile.intent.action.SCREEN_SAVER_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    if-nez v3, :cond_1

    .line 192
    new-instance v3, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    invoke-direct {v3, p0, v6}, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;-><init>(Lcom/samsung/android/settings/qstile/ScreensaverTile;Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;)V

    iput-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    .line 193
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    .end local v0    # "ScreensaverSize":I
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 196
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    if-eqz v3, :cond_1

    .line 197
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iput-object v6, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    goto :goto_1
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getTileState()I

    move-result v0

    .line 68
    .local v0, "tilestate":I
    if-ne v0, v2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    .line 74
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->refreshScreensaver()V

    .line 65
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    .line 55
    new-instance v1, Lcom/android/settingslib/dream/DreamBackend;

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    .line 56
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->screensaverSize:I

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->screensaverSize:I

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v1, :cond_0

    .line 59
    sput v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    .line 118
    const-string/jumbo v0, "ScreensaverTile"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onStartListening()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 80
    const-string/jumbo v0, "ScreensaverTile"

    const-string/jumbo v1, "onStartListening"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->registerReceiver(Z)V

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->initTile()V

    .line 78
    return-void
.end method

.method public onStopListening()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->registerReceiver(Z)V

    .line 110
    return-void
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, -0x1000000

    const v9, 0x7f1106cd

    .line 148
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f04026b

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 150
    .local v4, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v6, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-static {v6, v7, v10, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 149
    const v7, 0x7f1106ca

    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 152
    const-string/jumbo v6, "ScreensaverTile"

    const-string/jumbo v7, "semGetDetailView"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v6, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v5

    .line 156
    .local v5, "value":Z
    const-string/jumbo v6, "ScreensaverTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "semGetDetailView - selectedscreensavere="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->screensaverSize:I

    if-ge v0, v6, :cond_2

    .line 158
    new-instance v1, Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "com.android.settings.screensavertile.intent.action.SCREEN_SAVER_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "id"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    iget-object v6, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    const/high16 v7, 0x8000000

    invoke-static {v6, v11, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 162
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f04026c

    invoke-direct {v3, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 163
    .local v3, "radioChild":Landroid/widget/RemoteViews;
    if-eqz v5, :cond_1

    .line 164
    const-string/jumbo v6, "setEnabled"

    invoke-virtual {v3, v9, v6, v12}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 169
    :goto_1
    invoke-virtual {v3, v9, v2}, Landroid/widget/RemoteViews;->semSetOnCheckedChangedPendingIntent(ILandroid/app/PendingIntent;)V

    .line 170
    iget-object v6, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v6, v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v3, v9, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "qs_detail_content_primary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v8

    invoke-static {v6, v7, v10, v8}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v3, v9, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 172
    sget v6, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    if-ne v0, v6, :cond_0

    .line 173
    const-string/jumbo v6, "setChecked"

    invoke-virtual {v3, v9, v6, v12}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 174
    sput v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selectedscreensaver:I

    .line 177
    :cond_0
    const v6, 0x7f1106cc

    invoke-virtual {v4, v6, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const-string/jumbo v6, "setEnabled"

    invoke-virtual {v3, v9, v6, v11}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_1

    .line 179
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "radioChild":Landroid/widget/RemoteViews;
    :cond_2
    return-object v4
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f0b166e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->SCREENSAVER_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    .line 134
    .local v0, "value":Z
    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->semSetToggleButtonChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->refreshScreensaver()V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->semUpdateDetailView()V

    .line 138
    return-void
.end method
