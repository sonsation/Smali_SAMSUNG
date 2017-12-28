.class public final Lcom/android/launcher3/common/view/IconViewStub;
.super Landroid/view/View;
.source "IconViewStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;,
        Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IconViewStub"


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

.field private final mInflateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/view/OnInflateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInflateUrgentTask:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/view/IconViewStub;-><init>(Landroid/content/Context;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/view/IconViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput p2, p0, Lcom/android/launcher3/common/view/IconViewStub;->mLayoutResource:I

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/common/view/IconViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateListeners:Ljava/util/ArrayList;

    .line 87
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedId:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mLayoutResource:I

    .line 91
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconViewStub;->setVisibility(I)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconViewStub;->setWillNotDraw(Z)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/view/IconViewStub;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/IconViewStub;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/IconViewStub;->replaceView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/view/IconViewStub;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/IconViewStub;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/view/IconViewStub;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/IconViewStub;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/IconViewStub;->prefetchIconResource(Lcom/android/launcher3/common/base/item/IconInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/view/IconViewStub;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/IconViewStub;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/launcher3/common/view/IconViewStub;->inflateView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private inflateView()Landroid/view/View;
    .locals 5

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "view":Landroid/view/View;
    iget v2, p0, Lcom/android/launcher3/common/view/IconViewStub;->mLayoutResource:I

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflater:Landroid/view/LayoutInflater;

    .line 293
    .local v0, "factory":Landroid/view/LayoutInflater;
    :goto_0
    iget v2, p0, Lcom/android/launcher3/common/view/IconViewStub;->mLayoutResource:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 297
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    :goto_1
    return-object v1

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconViewStub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .restart local v0    # "factory":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 295
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    :cond_1
    const-string v2, "IconViewStub"

    const-string v3, "InflateUrgentTask : inflater and layout resource id are not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private prefetchIconResource(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 4
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 345
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    .line 347
    .local v0, "iconCache":Lcom/android/launcher3/common/model/IconCache;
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_0
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 351
    .end local v0    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    :cond_0
    return-void

    .line 347
    .restart local v0    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private replaceView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 302
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    new-instance v4, Lcom/android/launcher3/common/view/IconViewStub$2;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/common/view/IconViewStub$2;-><init>(Lcom/android/launcher3/common/view/IconViewStub;Landroid/view/View;)V

    .line 311
    .local v4, "r":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconViewStub;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 316
    .local v5, "viewParent":Landroid/view/ViewParent;
    if-eqz v5, :cond_5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    move-object v3, v5

    .line 317
    check-cast v3, Landroid/view/ViewGroup;

    .line 319
    .local v3, "parent":Landroid/view/ViewGroup;
    iget v6, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 320
    iget v6, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedId:I

    invoke-virtual {p1, v6}, Landroid/view/View;->setId(I)V

    .line 323
    :cond_2
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 324
    .local v0, "index":I
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 327
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_3

    .line 328
    invoke-virtual {v3, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 333
    :goto_1
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 335
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/OnInflateListener;

    .line 336
    .local v2, "listener":Lcom/android/launcher3/common/view/OnInflateListener;
    const/4 v7, 0x0

    invoke-interface {v2, p0, p1, v7}, Lcom/android/launcher3/common/view/OnInflateListener;->onInflate(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_2

    .line 330
    .end local v2    # "listener":Lcom/android/launcher3/common/view/OnInflateListener;
    :cond_3
    invoke-virtual {v3, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 338
    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 340
    .end local v0    # "index":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_5
    const-string v6, "IconViewStub"

    const-string v7, "replaceView : already replaced or stub removed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addOnInflateListener(Lcom/android/launcher3/common/view/OnInflateListener;)V
    .locals 1
    .param p1, "inflateListener"    # Lcom/android/launcher3/common/view/OnInflateListener;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 178
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
    .line 174
    return-void
.end method

.method public getInflatedId()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mLayoutResource:I

    return v0
.end method

.method public inflateImmediately()Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 231
    :goto_0
    return-object v1

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateUrgentTask:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateUrgentTask:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateUrgentTask:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->cancel(Z)Z

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v1}, Lcom/android/launcher3/util/threadpool/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v1}, Lcom/android/launcher3/util/threadpool/Future;->cancel()V

    .line 225
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/common/view/IconViewStub;->inflateView()Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 227
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/view/IconViewStub;->replaceView(Landroid/view/View;)V

    :goto_1
    move-object v1, v0

    .line 231
    goto :goto_0

    .line 229
    :cond_3
    const-string v1, "IconViewStub"

    const-string v2, "inflateImmediately : inflate fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public inflateInBackground(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 4
    .param p1, "infoToPrefetchIcon"    # Lcom/android/launcher3/common/base/item/IconInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 241
    iget-object v3, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateUrgentTask:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    if-eqz v3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    new-instance v1, Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;-><init>(Lcom/android/launcher3/common/view/IconViewStub;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 246
    .local v1, "inflateTask":Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;
    new-instance v0, Lcom/android/launcher3/common/view/IconViewStub$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/view/IconViewStub$1;-><init>(Lcom/android/launcher3/common/view/IconViewStub;)V

    .line 261
    .local v0, "completeListener":Lcom/android/launcher3/util/threadpool/FutureListener;, "Lcom/android/launcher3/util/threadpool/FutureListener<Landroid/view/View;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getThreadPool()Lcom/android/launcher3/util/threadpool/ThreadPool;

    move-result-object v2

    .line 262
    .local v2, "threadPool":Lcom/android/launcher3/util/threadpool/ThreadPool;
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/util/threadpool/ThreadPool;->submit(Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)Lcom/android/launcher3/util/threadpool/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    goto :goto_0
.end method

.method public inflateInBackgroundUrgent(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 4
    .param p1, "infoToPrefetchIcon"    # Lcom/android/launcher3/common/base/item/IconInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateUrgentTask:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateBackgroundWorker:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/Future;->cancel()V

    .line 280
    :cond_2
    new-instance v0, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;-><init>(Lcom/android/launcher3/common/view/IconViewStub;Lcom/android/launcher3/common/view/IconViewStub$1;)V

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateUrgentTask:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflateUrgentTask:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

    sget-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/common/base/item/IconInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/common/view/IconViewStub;->setMeasuredDimension(II)V

    .line 169
    return-void
.end method

.method public setInflatedId(I)V
    .locals 0
    .param p1, "inflatedId"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedId:I

    .line 119
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflater:Landroid/view/LayoutInflater;

    .line 157
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResource"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mLayoutResource:I

    .line 149
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 193
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    if-eqz p1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconViewStub;->inflateImmediately()Landroid/view/View;

    goto :goto_0
.end method
