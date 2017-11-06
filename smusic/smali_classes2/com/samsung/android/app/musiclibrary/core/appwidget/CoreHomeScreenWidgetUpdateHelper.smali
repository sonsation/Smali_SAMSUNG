.class public abstract Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;
.super Ljava/lang/Object;
.source "CoreHomeScreenWidgetUpdateHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Widget"

.field private static final SYSTEM_SETTING_NEED_DARK_FONT:Ljava/lang/String; = "need_dark_font"

.field private static final TAG:Ljava/lang/String; = "SV-Widget"


# instance fields
.field private final mClsWidgetListService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mClsWidgetProvider:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mComponentName:Landroid/content/ComponentName;

.field private final mWidgetListEmptyViewResId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final mWidgetListViewResId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;II)V
    .locals 0
    .param p3, "widgetListViewResId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p4, "widgetListEmptyViewResId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "clsWidgetProvider":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "clsWidgetListService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mClsWidgetProvider:Ljava/lang/Class;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mClsWidgetListService:Ljava/lang/Class;

    .line 51
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListViewResId:I

    .line 52
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListEmptyViewResId:I

    .line 53
    return-void
.end method

.method public static isNeedDarkColor(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "need_dark_font"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, "needDarkFont":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private partialUpdateWidgetListInternal(Landroid/appwidget/AppWidgetManager;I)V
    .locals 2
    .param p1, "mgr"    # Landroid/appwidget/AppWidgetManager;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListViewResId:I

    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 126
    const-string v0, "SMUSIC-SV-Widget"

    const-string/jumbo v1, "updateWidgetList() data set changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method private updateWidgetListInternal(Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "mgr"    # Landroid/appwidget/AppWidgetManager;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListViewResId:I

    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 114
    const-string v0, "SMUSIC-SV-Widget"

    const-string/jumbo v1, "updateWidgetList() data set changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method


# virtual methods
.method public final getAppWidgetIds(Landroid/content/Context;)[I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 187
    .local v0, "mgr":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getComponentNameInternal(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    return-object v1
.end method

.method public final getClsWidgetListService()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mClsWidgetListService:Ljava/lang/Class;

    return-object v0
.end method

.method public final getClsWidgetProvider()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mClsWidgetProvider:Ljava/lang/Class;

    return-object v0
.end method

.method protected final getComponentNameInternal(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/content/ComponentName;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mClsWidgetProvider:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mComponentName:Landroid/content/ComponentName;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final getWidgetHeight(Landroid/content/Context;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 180
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 181
    .local v0, "mgr":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 182
    .local v1, "option":Landroid/os/Bundle;
    const-string v2, "appWidgetMinHeight"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public final getWidgetListEmptyViewResId()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListEmptyViewResId:I

    return v0
.end method

.method public final getWidgetListViewResId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListViewResId:I

    return v0
.end method

.method public final hasActiveWidget(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 146
    .local v2, "mgr":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getComponentNameInternal(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 148
    .local v0, "appWidgetIds":[I
    array-length v3, v0

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 149
    .local v1, "hasActiveWidget":Z
    :goto_0
    if-nez v1, :cond_0

    .line 150
    const-string v3, "SV-Widget"

    const-string v4, "There\'s no active widget."

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    return v1

    .line 148
    .end local v1    # "hasActiveWidget":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final updateWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "rv"    # Landroid/widget/RemoteViews;
    .param p4, "doUpdateList"    # Z

    .prologue
    .line 97
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 98
    .local v0, "mgr":Landroid/appwidget/AppWidgetManager;
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->updateWidgetOptions(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/Boolean;)V

    .line 99
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 100
    if-eqz p4, :cond_0

    .line 101
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->partialUpdateWidgetListInternal(Landroid/appwidget/AppWidgetManager;I)V

    .line 103
    :cond_0
    return-void
.end method

.method public final updateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "doUpdateList"    # Z

    .prologue
    .line 76
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 77
    .local v2, "mgr":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getComponentNameInternal(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 78
    .local v0, "appWidgetIds":[I
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 79
    .local v1, "id":I
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, p1, v1, p2, v5}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->updateWidgetOptions(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/Boolean;)V

    .line 80
    invoke-virtual {v2, v1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "id":I
    :cond_0
    if-eqz p3, :cond_1

    .line 83
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->updateWidgetListInternal(Landroid/appwidget/AppWidgetManager;[I)V

    .line 85
    :cond_1
    return-void
.end method

.method public final updateWidgetList(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 137
    .local v1, "mgr":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getComponentNameInternal(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 138
    .local v0, "appWidgetIds":[I
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->updateWidgetListInternal(Landroid/appwidget/AppWidgetManager;[I)V

    .line 139
    return-void
.end method

.method protected updateWidgetOptions(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "rv"    # Landroid/widget/RemoteViews;
    .param p4, "doUpdateList"    # Ljava/lang/Boolean;

    .prologue
    .line 65
    return-void
.end method
