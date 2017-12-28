.class public Lcom/android/launcher3/widget/model/WidgetLoader;
.super Ljava/lang/Object;
.source "WidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;,
        Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;,
        Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;
    }
.end annotation


# static fields
.field public static final INVALID_VERSION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WidgetLoader"


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private mDataVersion:J

.field private mHasUninstallApps:Z

.field private mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

.field private mWidgetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetProviders:Ljava/util/List;

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mDataVersion:J

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mListeners:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mHasUninstallApps:Z

    .line 58
    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 60
    return-void
.end method

.method static synthetic access$400(Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/android/launcher3/widget/model/WidgetLoader;->waitWithoutInterrupt(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/widget/model/WidgetLoader;Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/model/WidgetLoader;
    .param p1, "x1"    # Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/model/WidgetLoader;->loadWidgetAndShortcut(Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/widget/model/WidgetLoader;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/model/WidgetLoader;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/model/WidgetLoader;->notifyLoadComplete(Ljava/util/List;Z)V

    return-void
.end method

.method private getShortcutProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 243
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "shortcutsIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getSortedByPackage(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "sortedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "unSortedMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 300
    .local v0, "collector":Ljava/text/Collator;
    move-object v4, p1

    .line 301
    .local v4, "sortedMapItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 302
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 304
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 306
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 307
    .local v5, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 308
    new-instance v6, Lcom/android/launcher3/widget/model/WidgetLoader$1;

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/widget/model/WidgetLoader$1;-><init>(Lcom/android/launcher3/widget/model/WidgetLoader;Ljava/text/Collator;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 330
    :cond_0
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 332
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    :cond_1
    return-object v4
.end method

.method private getWidgetProviders()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v7, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    :try_start_0
    iget-object v10, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v9

    .line 251
    .local v9, "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    invoke-virtual {v9}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 253
    .local v8, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 256
    .local v1, "excludeWidgets":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 257
    iget-object v10, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 258
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.appwidget.action.EASY_MODE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v3, "intent":Landroid/content/Intent;
    const/4 v10, 0x0

    invoke-virtual {v6, v3, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 260
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 261
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 262
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    .end local v1    # "excludeWidgets":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v9    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    instance-of v10, v10, Landroid/os/TransactionTooLargeException;

    if-eqz v10, :cond_5

    .line 283
    iget-object v10, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetProviders:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 284
    iget-object v10, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetProviders:Ljava/util/List;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_0
    const-string v10, "WidgetLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TransactionTooLargeException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v7

    .line 268
    .restart local v1    # "excludeWidgets":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v8    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v9    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 269
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.dualsimwidget.DualsimWidget_data"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 274
    .local v5, "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v11, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v1, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.sec.android.widget.myeventwidget"

    iget-object v12, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 275
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 278
    iget-object v11, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 289
    .end local v1    # "excludeWidgets":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v5    # "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v9    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_5
    throw v0
.end method

.method private loadWidgetAndShortcut(Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;)Ljava/util/List;
    .locals 4
    .param p1, "syncContext"    # Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetProviders()Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "widgetProviders":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-direct {p0}, Lcom/android/launcher3/widget/model/WidgetLoader;->getShortcutProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    iget-boolean v3, p1, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

    if-eqz v3, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v2

    .line 180
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/widget/model/WidgetLoader;->makeGroupAndSort(Ljava/util/List;Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;)Ljava/util/List;

    move-result-object v1

    .line 181
    iget-boolean v3, p1, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

    if-nez v3, :cond_0

    .line 183
    iget-boolean v2, p1, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

    if-nez v2, :cond_2

    .line 184
    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetProviders:Ljava/util/List;

    monitor-enter v3

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 186
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetProviders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    monitor-exit v3

    :cond_2
    move-object v2, v1

    .line 189
    goto :goto_0

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private makeGroupAndSort(Ljava/util/List;Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;)Ljava/util/List;
    .locals 24
    .param p2, "syncContext"    # Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v18, Ljava/util/LinkedHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashMap;-><init>()V

    .line 195
    .local v18, "widgetNameMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v17, Ljava/util/LinkedHashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedHashMap;-><init>()V

    .line 197
    .local v17, "widgetMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 198
    .local v6, "itemInfo":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 199
    .local v12, "provider":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 235
    .end local v12    # "provider":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const/16 v16, 0x0

    .line 238
    :goto_1
    return-object v16

    .line 200
    .restart local v12    # "provider":Ljava/lang/Object;
    :cond_2
    instance-of v0, v12, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object v5, v12

    .line 201
    check-cast v5, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 202
    .local v5, "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    new-instance v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .end local v6    # "itemInfo":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetLoader;->mApp:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v5, v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 207
    .end local v5    # "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .end local v12    # "provider":Ljava/lang/Object;
    .restart local v6    # "itemInfo":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    :cond_3
    :goto_2
    if-eqz v6, :cond_0

    .line 209
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->hasUninstallApp:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetLoader;->mApp:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->hasUninstallApp:Z

    .line 213
    :cond_4
    iget-object v0, v6, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v14

    .line 214
    .local v14, "userId":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "@"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 216
    .local v15, "value":Ljava/lang/Object;
    if-eqz v15, :cond_8

    .line 217
    new-instance v11, Lcom/android/launcher3/common/model/PackageItemInfo;

    iget-object v0, v6, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lcom/android/launcher3/common/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    .line 218
    .local v11, "pInfo":Lcom/android/launcher3/common/model/PackageItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetLoader;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v19, v0

    iget-object v0, v11, Lcom/android/launcher3/common/model/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v6, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIconForApp(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;ZLcom/android/launcher3/common/model/PackageItemInfo;)V

    .line 219
    iget-object v0, v11, Lcom/android/launcher3/common/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const-string v4, ""

    .line 220
    .local v4, "applicationLabel":Ljava/lang/String;
    :goto_3
    invoke-virtual {v6, v4}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->setApplicationLabel(Ljava/lang/String;)V

    move-object v7, v15

    .line 221
    check-cast v7, Ljava/util/ArrayList;

    .line 222
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 223
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->setApplicationLabel(Ljava/lang/String;)V

    .line 224
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "@"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_5
    check-cast v15, Ljava/util/ArrayList;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 203
    .end local v4    # "applicationLabel":Ljava/lang/String;
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "pInfo":Lcom/android/launcher3/common/model/PackageItemInfo;
    .end local v14    # "userId":I
    .restart local v12    # "provider":Ljava/lang/Object;
    :cond_6
    instance-of v0, v12, Landroid/content/pm/ResolveInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 204
    new-instance v6, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .end local v6    # "itemInfo":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .end local v12    # "provider":Ljava/lang/Object;
    invoke-direct {v6, v12}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .restart local v6    # "itemInfo":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    goto/16 :goto_2

    .line 219
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v11    # "pInfo":Lcom/android/launcher3/common/model/PackageItemInfo;
    .restart local v14    # "userId":I
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_7
    iget-object v0, v11, Lcom/android/launcher3/common/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 228
    .end local v11    # "pInfo":Lcom/android/launcher3/common/model/PackageItemInfo;
    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "@"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetLoader;->mApp:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 229
    .local v10, "nameValue":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 236
    .end local v8    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "nameValue":Ljava/lang/String;
    .end local v14    # "userId":I
    .end local v15    # "value":Ljava/lang/Object;
    :cond_9
    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/widget/model/WidgetLoader;->sortByValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/widget/model/WidgetLoader;->getSortedByPackage(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v13

    .line 237
    .local v13, "sortedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    .local v16, "widgetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto/16 :goto_1
.end method

.method private needToRefresh([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 13
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 369
    iget-object v8, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetItems:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v6

    .line 373
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 375
    .local v4, "object":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    .line 376
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 377
    .local v2, "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    array-length v11, p1

    move v8, v7

    :goto_1
    if-ge v8, v11, :cond_3

    aget-object v5, p1, v8

    .line 378
    .local v5, "p":Ljava/lang/String;
    iget-object v12, v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v12, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_0

    .line 377
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 384
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "WidgetLoader"

    const-string v8, "ignore refresh widget loader"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_5
    move v6, v7

    .line 387
    goto :goto_0
.end method

.method private declared-synchronized notifyLoadComplete(Ljava/util/List;Z)V
    .locals 6
    .param p2, "hasUninstallApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mHasUninstallApps:Z

    .line 114
    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetItems:Ljava/util/List;

    .line 115
    iget-wide v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mDataVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mDataVersion:J

    .line 118
    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

    .line 119
    .local v0, "listener":Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;
    invoke-interface {v0}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;->onLoadComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    .end local v0    # "listener":Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 121
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public static sortByValues(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 338
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    .line 339
    .local v2, "mCollator":Ljava/text/Collator;
    new-instance v4, Lcom/android/launcher3/widget/model/WidgetLoader$2;

    invoke-direct {v4, v2}, Lcom/android/launcher3/widget/model/WidgetLoader$2;-><init>(Ljava/text/Collator;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 353
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 354
    .local v3, "sortedMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 355
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-object v3
.end method

.method private static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WidgetLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected interrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getDataVersion()J
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoaderTaskStop()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mLoadTask:Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getWidgetItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mWidgetItems:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUninstallApps()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mHasUninstallApps:Z

    return v0
.end method

.method public notifyDirty([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 2
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "refresh"    # Z

    .prologue
    .line 63
    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/model/WidgetLoader;->needToRefresh([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "WidgetLoader"

    const-string v1, "ignore dirty because widgets are not changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mLoadTask:Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;-><init>(Lcom/android/launcher3/widget/model/WidgetLoader;Lcom/android/launcher3/widget/model/WidgetLoader$1;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mLoadTask:Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mLoadTask:Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->start()V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mLoadTask:Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->access$100(Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;)V

    goto :goto_0
.end method

.method public declared-synchronized removeLoadListener(Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLoadListener(Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoaderTaskStop(Z)V
    .locals 1
    .param p1, "isStopped"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mLoadTask:Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mLoadTask:Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->access$200(Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader;->mLoadTask:Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    .line 82
    :cond_0
    return-void
.end method
