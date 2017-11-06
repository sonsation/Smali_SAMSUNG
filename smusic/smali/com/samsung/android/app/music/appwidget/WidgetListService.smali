.class public Lcom/samsung/android/app/music/appwidget/WidgetListService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetListService.java"


# static fields
.field private static final DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-WidgetList"

.field private static final TAG:Ljava/lang/String; = "SV-WidgetList"

.field private static sFontScale:F

.field private static sIsEasyModeOn:Z

.field private static sServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sFontScale:F

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sIsEasyModeOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method

.method public static isAlive()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sServiceRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 98
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sServiceRef:Ljava/lang/ref/WeakReference;

    .line 99
    invoke-super {p0}, Landroid/widget/RemoteViewsService;->onCreate()V

    .line 100
    const-string v3, "SMUSIC-SV-WidgetList"

    const-string/jumbo v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/WidgetListService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 108
    .local v1, "fontScale":F
    sget v3, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sFontScale:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    .line 109
    sput v1, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sFontScale:F

    .line 110
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getInstance()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->updateWidget()V

    .line 112
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/EasyModeUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v2

    .line 113
    .local v2, "isEasyModeOn":Z
    sget-boolean v3, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sIsEasyModeOn:Z

    if-eq v2, v3, :cond_1

    .line 114
    sput-boolean v2, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sIsEasyModeOn:Z

    .line 115
    sget-boolean v3, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sIsEasyModeOn:Z

    if-nez v3, :cond_1

    .line 116
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getInstance()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->updateWidgetList(Landroid/content/Context;)V

    .line 119
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/RemoteViewsService;->onDestroy()V

    .line 132
    const-string v0, "SMUSIC-SV-WidgetList"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/appwidget/WidgetListService;->sServiceRef:Ljava/lang/ref/WeakReference;

    .line 134
    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    new-instance v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/WidgetListService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
