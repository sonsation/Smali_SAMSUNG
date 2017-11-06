.class public abstract Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;
.source "SeslFragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .prologue
    .line 67
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;-><init>()V

    .line 47
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 71
    iput p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mWindowAnimations:I

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    .prologue
    .line 59
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    .prologue
    .line 63
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 64
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doDestroy()V

    goto :goto_0
.end method

.method doLoaderRetain()V
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doRetain()V

    goto :goto_0
.end method

.method doLoaderStart()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v3, 0x1

    .line 237
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 240
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    .line 242
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStart()V

    .line 251
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mCheckedForLoaderManager:Z

    goto :goto_0

    .line 244
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1

    .line 245
    const-string v0, "(root)"

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 247
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStart()V

    goto :goto_1
.end method

.method doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .prologue
    .line 256
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mRetainLoaders:Z

    .line 258
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    .line 267
    if-eqz p1, :cond_2

    .line 268
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doRetain()V

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStop()V

    goto :goto_0
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 358
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SeslLoader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 366
    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 194
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .prologue
    .line 304
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 308
    .local v0, "lm":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    if-nez v0, :cond_2

    .line 309
    if-eqz p3, :cond_1

    .line 310
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .end local v0    # "lm":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;-><init>(Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Z)V

    .line 311
    .restart local v0    # "lm":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_1
    :goto_0
    return-object v0

    .line 314
    :cond_2
    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->updateHostController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)V

    goto :goto_0
.end method

.method getLoaderManagerImpl()Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v2, 0x1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 215
    :goto_0
    return-object v0

    .line 213
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 214
    const-string v0, "(root)"

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 215
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    goto :goto_0
.end method

.method getRetainLoaders()Z
    .locals 1

    .prologue
    .line 233
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 220
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 222
    .local v0, "lm":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doDestroy()V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v0    # "lm":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    :cond_0
    return-void
.end method

.method onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 230
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 84
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 98
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .prologue
    .line 158
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    return-void
.end method

.method public onShouldSaveFragmentState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Z
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 90
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStartActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 121
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onStartActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public onStartActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a SeslFragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public onStartIntentSenderFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting intent sender with a requestCode requires a SeslFragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mActivity:Landroid/app/Activity;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 114
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    return-void
.end method

.method reportLoaderStart()V
    .locals 5

    .prologue
    .line 289
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    if-eqz v4, :cond_1

    .line 290
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v0

    .line 291
    .local v0, "N":I
    new-array v3, v0, [Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 292
    .local v3, "loaders":[Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 293
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    aput-object v4, v3, v1

    .line 292
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 295
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 296
    aget-object v2, v3, v1

    .line 297
    .local v2, "lm":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->finishRetain()V

    .line 298
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doReportStart()V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "lm":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    .end local v3    # "loaders":[Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    :cond_1
    return-void
.end method

.method restoreLoaderNonConfig(Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    .local p1, "loaderManagers":Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap<Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;>;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    .line 355
    return-void
.end method

.method retainLoaderNonConfig()Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<TE;>;"
    const/4 v5, 0x0

    .line 321
    .local v5, "retainLoaders":Z
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    if-eqz v6, :cond_4

    .line 324
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v0

    .line 325
    .local v0, "N":I
    new-array v4, v0, [Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 326
    .local v4, "loaders":[Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 327
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v6, v2}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    aput-object v6, v4, v2

    .line 326
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getRetainLoaders()Z

    move-result v1

    .line 330
    .local v1, "doRetainLoaders":Z
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 331
    aget-object v3, v4, v2

    .line 332
    .local v3, "lm":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    iget-boolean v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    .line 333
    iget-boolean v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_1

    .line 334
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStart()V

    .line 336
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doRetain()V

    .line 338
    :cond_2
    iget-boolean v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_3

    .line 339
    const/4 v5, 0x1

    .line 330
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 341
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doDestroy()V

    .line 342
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    iget-object v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 347
    .end local v0    # "N":I
    .end local v1    # "doRetainLoaders":Z
    .end local v2    # "i":I
    .end local v3    # "lm":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    .end local v4    # "loaders":[Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    :cond_4
    if-eqz v5, :cond_5

    .line 348
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    .line 350
    :goto_3
    return-object v6

    :cond_5
    const/4 v6, 0x0

    goto :goto_3
.end method
