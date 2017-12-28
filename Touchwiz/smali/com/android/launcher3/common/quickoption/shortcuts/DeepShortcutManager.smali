.class public Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
.super Ljava/lang/Object;
.source "DeepShortcutManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation


# static fields
.field private static final FLAG_GET_ALL:I = 0xb

.field private static final TAG:Ljava/lang/String; = "DeepShortcutManager"


# instance fields
.field private mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiHashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mWasLastCallSuccess:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutCache"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    .line 69
    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 70
    return-void
.end method

.method private extractIds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .line 208
    .local v0, "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v0    # "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    :cond_0
    return-object v1
.end method

.method private query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 7
    .param p1, "flags"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p5, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v5, :cond_3

    .line 223
    new-instance v1, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 224
    .local v1, "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v1, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 225
    if-eqz p2, :cond_0

    .line 226
    invoke-virtual {v1, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 227
    invoke-virtual {v1, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 228
    invoke-virtual {v1, p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 230
    :cond_0
    const/4 v4, 0x0

    .line 232
    .local v4, "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 233
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    if-nez v4, :cond_2

    .line 239
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 247
    .end local v1    # "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .end local v4    # "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_1
    :goto_1
    return-object v3

    .line 234
    .restart local v1    # "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .restart local v4    # "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2
    const-string v5, "DeepShortcutManager"

    const-string v6, "Failed to query for shortcuts"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v3, "shortcutInfoCompats":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 243
    .local v2, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    new-instance v6, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-direct {v6, v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 247
    .end local v1    # "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .end local v2    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v3    # "shortcutInfoCompats":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    .end local v4    # "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_3
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    .line 234
    .restart local v1    # "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .restart local v4    # "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static supportsShortcuts(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/MultiHashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "deepShortcutMapCopy":Lcom/android/launcher3/util/MultiHashMap;, "Lcom/android/launcher3/util/MultiHashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    .line 266
    const-string v0, "DeepShortcutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindDeepShortcutMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public closeShortcutsContainer(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->closeShortcutsContainer(Landroid/content/Context;Z)V

    .line 284
    return-void
.end method

.method public closeShortcutsContainer(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animate"    # Z

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getOpenShortcutsContainer(Landroid/content/Context;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    move-result-object v0

    .line 288
    .local v0, "deepShortcutsContainer":Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;
    if-eqz v0, :cond_0

    .line 289
    if-eqz p2, :cond_1

    .line 290
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->animateClose()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->close()V

    goto :goto_0
.end method

.method public getOpenShortcutsContainer(Landroid/content/Context;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportDeepShortcut()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    .line 306
    .local v1, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 307
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    .line 309
    invoke-virtual {v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    .line 315
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 306
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_1
    move-object v0, v4

    .line 313
    goto :goto_1

    .end local v1    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v2    # "i":I
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    move-object v0, v4

    .line 315
    goto :goto_1
.end method

.method public getShortcutIconDrawable(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "shortcutInfo"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .prologue
    .line 178
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v2, :cond_0

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    const/16 v4, 0x280

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 182
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v2, "DeepShortcutManager"

    const-string v3, "Failed to get shortcut icon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    .line 189
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getShortcutIdsForItem(Lcom/android/launcher3/common/base/item/IconInfo;)Ljava/util/List;
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 279
    :cond_0
    :goto_0
    return-object v1

    .line 273
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 274
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 275
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 278
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v3, v0, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 279
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public hasHostPermission()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .prologue
    .line 253
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v1, :cond_0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    :goto_0
    return v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v1, "DeepShortcutManager"

    const-string v2, "Failed to make shortcut manager call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onShortcutsChanged(Ljava/util/List;)V
    .locals 0
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
    .line 82
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    return-void
.end method

.method public pinShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V
    .locals 7
    .param p1, "key"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .prologue
    .line 140
    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v5, :cond_0

    .line 141
    iget-object v5, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 144
    .local v4, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 145
    .local v3, "pinnedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 148
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pinnedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "pinnedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v5, "DeepShortcutManager"

    const-string v6, "Failed to pin shortcut"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public queryForAllShortcuts(Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 202
    const/16 v1, 0xb

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForFullDetails(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0xb

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForPinnedShortcuts(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 198
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForShortcutKey(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .locals 7
    .param p1, "key"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    .prologue
    const/4 v3, 0x0

    .line 85
    const/16 v1, 0xb

    iget-object v0, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v6

    .line 86
    .local v6, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    move-object v3, v0

    goto :goto_0
.end method

.method public queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0x9

    .line 109
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V
    .locals 6
    .param p1, "key"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 159
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "startActivityOptions"    # Landroid/os/Bundle;
    .param p5, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .prologue
    .line 164
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 167
    invoke-virtual {p5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 166
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v6

    .line 170
    .local v6, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v0, "DeepShortcutManager"

    const-string v1, "Failed to start shortcut"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0

    .line 169
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public unpinShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V
    .locals 7
    .param p1, "key"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .prologue
    .line 118
    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v5, :cond_0

    .line 119
    iget-object v5, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 122
    .local v4, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 123
    .local v3, "pinnedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 126
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pinnedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "pinnedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v5, "DeepShortcutManager"

    const-string v6, "Failed to unpin shortcut"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public wasLastCallSuccess()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    return v0
.end method
