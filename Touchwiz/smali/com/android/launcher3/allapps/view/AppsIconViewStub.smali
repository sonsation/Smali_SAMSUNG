.class public final Lcom/android/launcher3/allapps/view/AppsIconViewStub;
.super Landroid/view/View;
.source "AppsIconViewStub.java"

# interfaces
.implements Lcom/android/launcher3/allapps/view/Stub;
.implements Lcom/android/launcher3/common/view/Removable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsIconViewStub"


# instance fields
.field private mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/threadpool/Future",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

.field private mInflatedId:I

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

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutResource:I

.field private mMarkToRemove:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;-><init>(Landroid/content/Context;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput p2, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mLayoutResource:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mMarkToRemove:Z

    .line 91
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflatedId:I

    .line 93
    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mLayoutResource:I

    .line 95
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->setVisibility(I)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->setWillNotDraw(Z)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/view/AppsIconViewStub;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsIconViewStub;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/view/AppsIconViewStub;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsIconViewStub;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->prefetchIconResource(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/view/AppsIconViewStub;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsIconViewStub;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->inflateView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private inflateView()Landroid/view/View;
    .locals 5

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "view":Landroid/view/View;
    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mLayoutResource:I

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflater:Landroid/view/LayoutInflater;

    .line 223
    .local v0, "factory":Landroid/view/LayoutInflater;
    :goto_0
    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mLayoutResource:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 224
    if-nez v1, :cond_0

    .line 225
    const-string v2, "AppsIconViewStub"

    const-string v3, "inflateView : inflate fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    :cond_0
    :goto_1
    return-object v1

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .restart local v0    # "factory":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 228
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    :cond_2
    const-string v2, "AppsIconViewStub"

    const-string v3, "InflateUrgentTask : inflater and layout resource id are not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private prefetchIconResource(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 282
    instance-of v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 283
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 284
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    .line 285
    .local v0, "iconCache":Lcom/android/launcher3/common/model/IconCache;
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->useCache(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_0
    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 298
    .end local v0    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    :goto_1
    return-void

    .line 286
    .restart local v0    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .restart local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 290
    :cond_2
    const-string v3, "AppsIconViewStub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This icon has exceptional bitmap, so we\'ll load the title from cache only! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v4

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_2
    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 293
    .local v2, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_1

    .line 291
    .end local v2    # "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_3
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_2
.end method

.method private useCache(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 278
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
    .line 341
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/Future;->cancel()V

    .line 344
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 182
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
    .line 178
    return-void
.end method

.method public getInflatedId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mLayoutResource:I

    return v0
.end method

.method public inflateInBackground(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "infoToPrefetchIcon"    # Lcom/android/launcher3/common/base/item/ItemInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    if-eqz v3, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v1, Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;-><init>(Lcom/android/launcher3/allapps/view/AppsIconViewStub;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 197
    .local v1, "inflateTask":Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsIconViewStub$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub$1;-><init>(Lcom/android/launcher3/allapps/view/AppsIconViewStub;)V

    .line 210
    .local v0, "completeListener":Lcom/android/launcher3/util/threadpool/FutureListener;, "Lcom/android/launcher3/util/threadpool/FutureListener<Landroid/view/View;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getThreadPool()Lcom/android/launcher3/util/threadpool/ThreadPool;

    move-result-object v2

    .line 211
    .local v2, "threadPool":Lcom/android/launcher3/util/threadpool/ThreadPool;
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/util/threadpool/ThreadPool;->submit(Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)Lcom/android/launcher3/util/threadpool/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    goto :goto_0
.end method

.method public isMarkToRemove()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mMarkToRemove:Z

    return v0
.end method

.method public markToRemove(Z)V
    .locals 0
    .param p1, "tobeRemove"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mMarkToRemove:Z

    .line 332
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->setMeasuredDimension(II)V

    .line 173
    return-void
.end method

.method public prefetchIconResInBackground(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/allapps/view/Inflater;)V
    .locals 0
    .param p1, "infoToPrefetch"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "inflater"    # Lcom/android/launcher3/allapps/view/Inflater;

    .prologue
    .line 348
    return-void
.end method

.method public replaceView(Landroid/view/View;Z)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cancelled"    # Z
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 237
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    const-string v5, "AppsIconViewStub"

    const-string v6, "ignore replaceView because launcher is destroyed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 243
    .local v4, "viewParent":Landroid/view/ViewParent;
    if-nez p2, :cond_6

    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mMarkToRemove:Z

    if-nez v5, :cond_6

    move-object v3, v4

    .line 246
    check-cast v3, Landroid/view/ViewGroup;

    .line 247
    .local v3, "parent":Landroid/view/ViewGroup;
    iget v5, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflatedId:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    .line 248
    iget v5, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflatedId:I

    invoke-virtual {p1, v5}, Landroid/view/View;->setId(I)V

    .line 251
    :cond_2
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 252
    .local v1, "index":I
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 255
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_5

    .line 256
    instance-of v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    if-eqz v5, :cond_3

    move-object v5, v2

    .line 257
    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iput-boolean v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 259
    :cond_3
    invoke-virtual {v3, p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 264
    :goto_1
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 270
    .end local v1    # "index":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    if-eqz v5, :cond_0

    .line 271
    iget-boolean v5, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mMarkToRemove:Z

    if-nez v5, :cond_4

    if-eqz p2, :cond_8

    :cond_4
    move v0, v6

    .line 272
    .local v0, "cancel":Z
    :goto_3
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    invoke-interface {v5, p0, p1, v0}, Lcom/android/launcher3/common/view/OnInflateListener;->onInflate(Landroid/view/View;Landroid/view/View;Z)V

    .line 273
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    goto :goto_0

    .line 261
    .end local v0    # "cancel":Z
    .restart local v1    # "index":I
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "parent":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v3, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 266
    .end local v1    # "index":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_6
    const-string v8, "AppsIconViewStub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "replaceView ignored : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v4, :cond_7

    move v5, v6

    :goto_4
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " , "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " , "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v9, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mMarkToRemove:Z

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v5, v7

    goto :goto_4

    :cond_8
    move v0, v7

    .line 271
    goto :goto_3
.end method

.method public replaceView(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/allapps/view/Inflater;Z)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "inflater"    # Lcom/android/launcher3/allapps/view/Inflater;
    .param p3, "cancelled"    # Z

    .prologue
    .line 352
    return-void
.end method

.method public setInflateListener(Lcom/android/launcher3/common/view/OnInflateListener;)V
    .locals 0
    .param p1, "inflateListener"    # Lcom/android/launcher3/common/view/OnInflateListener;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    .line 327
    return-void
.end method

.method public setInflatedId(I)V
    .locals 0
    .param p1, "inflatedId"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflatedId:I

    .line 123
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mInflater:Landroid/view/LayoutInflater;

    .line 161
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResource"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->mLayoutResource:I

    .line 153
    return-void
.end method
