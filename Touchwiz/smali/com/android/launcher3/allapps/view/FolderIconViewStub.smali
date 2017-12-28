.class public final Lcom/android/launcher3/allapps/view/FolderIconViewStub;
.super Landroid/view/View;
.source "FolderIconViewStub.java"

# interfaces
.implements Lcom/android/launcher3/allapps/view/Stub;
.implements Lcom/android/launcher3/common/view/Removable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderIconViewStub"


# instance fields
.field private mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMarkToRemove:Z

.field private mPrefetchIconResBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/threadpool/Future",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mMarkToRemove:Z

    .line 77
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 79
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->setVisibility(I)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->setWillNotDraw(Z)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/view/FolderIconViewStub;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/FolderIconViewStub;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/view/FolderIconViewStub;Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/FolderIconViewStub;
    .param p1, "x1"    # Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;
    .param p2, "x2"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->prefetchIconResource(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method private prefetchIconResource(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 10
    .param p1, "jc"    # Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;
    .param p2, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 206
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 207
    .local v0, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v2

    .line 208
    .local v2, "iconCache":Lcom/android/launcher3/common/model/IconCache;
    iget-object v4, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 209
    .local v4, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 210
    .local v6, "prefetchCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 211
    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 229
    :cond_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 216
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->useCache(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 217
    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_1
    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v7, v8, v9}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 210
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_3
    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_1

    .line 221
    :cond_4
    const-string v7, "FolderIconViewStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This icon has exceptional bitmap, so we\'ll load the title from cache only! : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v7, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v8

    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v7, :cond_5

    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_3
    iget-object v9, v3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v5

    .line 224
    .local v5, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-eqz v5, :cond_2

    .line 225
    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_2

    .line 222
    .end local v5    # "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_5
    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_3
.end method

.method private useCache(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mPrefetchIconResBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mPrefetchIconResBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mPrefetchIconResBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/Future;->cancel()V

    .line 271
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public inflateInBackground(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "infoToPrefetchIcon"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 275
    return-void
.end method

.method public isMarkToRemove()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mMarkToRemove:Z

    return v0
.end method

.method public markToRemove(Z)V
    .locals 0
    .param p1, "tobeRemove"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mMarkToRemove:Z

    .line 259
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->setMeasuredDimension(II)V

    .line 86
    return-void
.end method

.method public prefetchIconResInBackground(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/allapps/view/Inflater;)V
    .locals 4
    .param p1, "infoToPrefetch"    # Lcom/android/launcher3/common/base/item/ItemInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "inflater"    # Lcom/android/launcher3/allapps/view/Inflater;

    .prologue
    .line 105
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mPrefetchIconResBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v1, Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;-><init>(Lcom/android/launcher3/allapps/view/FolderIconViewStub;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 110
    .local v1, "iconResourceTask":Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;
    new-instance v0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;-><init>(Lcom/android/launcher3/allapps/view/FolderIconViewStub;Lcom/android/launcher3/allapps/view/Inflater;)V

    .line 123
    .local v0, "completeListener":Lcom/android/launcher3/util/threadpool/FutureListener;, "Lcom/android/launcher3/util/threadpool/FutureListener<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getThreadPool()Lcom/android/launcher3/util/threadpool/ThreadPool;

    move-result-object v2

    .line 124
    .local v2, "threadPool":Lcom/android/launcher3/util/threadpool/ThreadPool;
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/util/threadpool/ThreadPool;->submit(Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)Lcom/android/launcher3/util/threadpool/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mPrefetchIconResBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    goto :goto_0
.end method

.method public replaceView(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cancelled"    # Z
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 172
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    const-string v4, "FolderIconViewStub"

    const-string v5, "ignore replaceView because launcher is destroyed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 178
    .local v3, "viewParent":Landroid/view/ViewParent;
    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 180
    check-cast v2, Landroid/view/ViewGroup;

    .line 181
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 182
    .local v0, "index":I
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 185
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {v2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 190
    :goto_1
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 195
    .end local v0    # "index":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :goto_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    invoke-interface {v4, p0, p1, p2}, Lcom/android/launcher3/common/view/OnInflateListener;->onInflate(Landroid/view/View;Landroid/view/View;Z)V

    .line 197
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    goto :goto_0

    .line 188
    .restart local v0    # "index":I
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 192
    .end local v0    # "index":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_3
    const-string v4, "FolderIconViewStub"

    const-string v5, "replaceView : already replaced or stub removed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public replaceView(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/allapps/view/Inflater;Z)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "inflater"    # Lcom/android/launcher3/allapps/view/Inflater;
    .param p3, "cancelled"    # Z

    .prologue
    .line 129
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    const-string v5, "FolderIconViewStub"

    const-string v6, "ignore replaceView because launcher is destroyed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 135
    .local v4, "viewParent":Landroid/view/ViewParent;
    const/4 v3, 0x0

    .line 136
    .local v3, "view":Landroid/view/View;
    if-nez p3, :cond_2

    .line 137
    const-string v5, "FolderIconViewStub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder bind start : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-interface {p2, p1}, Lcom/android/launcher3/allapps/view/Inflater;->inflateView(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v3

    .line 139
    const-string v5, "FolderIconViewStub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder bind end : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    if-nez p3, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    move-object v2, v4

    .line 144
    check-cast v2, Landroid/view/ViewGroup;

    .line 145
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 146
    .local v0, "index":I
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 149
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_4

    .line 150
    instance-of v5, v1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    if-eqz v5, :cond_3

    move-object v5, v1

    .line 151
    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 153
    :cond_3
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 157
    :goto_1
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 162
    .end local v0    # "index":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    if-eqz v5, :cond_0

    .line 163
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    invoke-interface {v5, p0, v3, p3}, Lcom/android/launcher3/common/view/OnInflateListener;->onInflate(Landroid/view/View;Landroid/view/View;Z)V

    .line 164
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    goto :goto_0

    .line 155
    .restart local v0    # "index":I
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 159
    .end local v0    # "index":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_5
    const-string v5, "FolderIconViewStub"

    const-string v6, "replaceView : already replaced or stub removed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setInflateListener(Lcom/android/launcher3/common/view/OnInflateListener;)V
    .locals 0
    .param p1, "inflateListener"    # Lcom/android/launcher3/common/view/OnInflateListener;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    .line 254
    return-void
.end method
