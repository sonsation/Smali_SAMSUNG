.class public Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;
.super Ljava/lang/Object;
.source "ShortcutCache.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x1e

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ShortcutCache"


# instance fields
.field private mCachedShortcuts:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedShortcuts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;->mCachedShortcuts:Landroid/util/LruCache;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;->mPinnedShortcuts:Ljava/util/HashMap;

    .line 46
    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .locals 1
    .param p1, "key"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;->mPinnedShortcuts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;->mPinnedShortcuts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;->mCachedShortcuts:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    goto :goto_0
.end method

.method public put(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)V
    .locals 1
    .param p1, "key"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .param p2, "shortcut"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .prologue
    .line 71
    invoke-virtual {p2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;->mPinnedShortcuts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;->mCachedShortcuts:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeShortcuts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .line 57
    .local v1, "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    invoke-static {v1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->fromInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v0

    .line 58
    .local v0, "key":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;->mCachedShortcuts:Landroid/util/LruCache;

    invoke-virtual {v3, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;->mPinnedShortcuts:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    .end local v0    # "key":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .end local v1    # "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    :cond_0
    return-void
.end method
