.class public Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "HomeScreenWidgetProvider.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DIM_POSITION:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Widget"

.field private static final TAG:Ljava/lang/String; = "SV-Widget"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private isCurrentPlayingSong(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    .line 140
    .local v0, "facade":Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra.list_position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onListItemClicked(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    const-string v2, "extra_list_position"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, "position":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isCurrentPlayingSong(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->togglePause()V

    goto :goto_0

    .line 133
    :cond_1
    const-string v2, "extra_list_ids"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 134
    .local v0, "list":[J
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->openWidgetQueue([JI)V

    goto :goto_0
.end method

.method private onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v1, "com.samsung.android.app.music.core.action.appwidget.ACTION_MUSIC_LIST_CLICKED"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->onListItemClicked(Landroid/content/Context;Landroid/content/Intent;)V

    .line 111
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 98
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getInstance()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->hasActiveWidget(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    const/4 v1, 0x1

    goto :goto_1

    .line 102
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/service/PlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    .line 103
    .local v0, "facade":Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    if-eqz v0, :cond_3

    .line 104
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra.list_length"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getInstance()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->updateWidgetList(Landroid/content/Context;)V

    goto :goto_0

    .line 107
    .end local v0    # "facade":Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    :cond_4
    const-string v1, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    .line 108
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateWidget()V

    goto :goto_0
.end method

.method private updateWidget()V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->updateWidget()V

    .line 116
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateWidget()V

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 64
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SMUSIC-SV-Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error happened: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateWidget()V

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 56
    return-void
.end method
