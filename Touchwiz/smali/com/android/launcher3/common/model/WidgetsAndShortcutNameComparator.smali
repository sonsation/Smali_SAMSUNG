.class public Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;
.super Ljava/lang/Object;
.source "WidgetsAndShortcutNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandle:Lcom/android/launcher3/common/compat/UserHandleCompat;

.field private final mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    .line 44
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    .line 45
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 46
    return-void
.end method

.method private getComponentKey(Ljava/lang/Object;)Lcom/android/launcher3/util/ComponentKey;
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 89
    instance-of v3, p1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 90
    check-cast v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 91
    .local v2, "widgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    iget-object v4, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 96
    .end local v2    # "widgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :goto_0
    return-object v3

    :cond_0
    move-object v1, p1

    .line 93
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 94
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0
.end method

.method private getLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 104
    instance-of v2, p1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 105
    check-cast v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 106
    .local v1, "widgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    iget-object v2, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->loadLabel(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .end local v1    # "widgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :goto_0
    return-object v2

    :cond_0
    move-object v0, p1

    .line 108
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 109
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10
    .param p1, "objA"    # Ljava/lang/Object;
    .param p2, "objB"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 57
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->getComponentKey(Ljava/lang/Object;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v2

    .line 58
    .local v2, "keyA":Lcom/android/launcher3/util/ComponentKey;
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->getComponentKey(Ljava/lang/Object;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    .line 62
    .local v3, "keyB":Lcom/android/launcher3/util/ComponentKey;
    iget-object v8, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v9, v2, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move v0, v6

    .line 63
    .local v0, "aWorkProfile":Z
    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v9, v3, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move v1, v6

    .line 64
    .local v1, "bWorkProfile":Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 82
    :goto_2
    return v6

    .end local v0    # "aWorkProfile":Z
    .end local v1    # "bWorkProfile":Z
    :cond_0
    move v0, v7

    .line 62
    goto :goto_0

    .restart local v0    # "aWorkProfile":Z
    :cond_1
    move v1, v7

    .line 63
    goto :goto_1

    .line 67
    .restart local v1    # "bWorkProfile":Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 68
    const/4 v6, -0x1

    goto :goto_2

    .line 72
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 73
    .local v4, "labelA":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 74
    .local v5, "labelB":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 75
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->getLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 76
    iget-object v6, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_4
    if-nez v5, :cond_5

    .line 79
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->getLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 80
    iget-object v6, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v6, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 53
    return-void
.end method
