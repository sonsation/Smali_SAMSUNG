.class public Lcom/samsung/android/support/sesl/core/content/SeslLoader;
.super Ljava/lang/Object;
.source "SeslLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;,
        Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;,
        Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    .line 42
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mReset:Z

    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContentChanged:Z

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    .prologue
    .line 387
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onAbandon()V

    .line 389
    return-void
.end method

.method public cancelLoad()Z
    .locals 1

    .prologue
    .line 304
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .locals 1

    .prologue
    .line 459
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    .line 460
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 500
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 501
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public deliverCancellation()V
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;->onLoadCanceled(Lcom/samsung/android/support/sesl/core/content/SeslLoader;)V

    .line 142
    :cond_0
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;->onLoadComplete(Lcom/samsung/android/support/sesl/core/content/SeslLoader;Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 524
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 525
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 526
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 528
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 529
    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 531
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mReset:Z

    if-eqz v0, :cond_3

    .line 532
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 533
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mReset:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 535
    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 0

    .prologue
    .line 331
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onForceLoad()V

    .line 332
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    iget v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .locals 0

    .prologue
    .line 401
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    .prologue
    .line 319
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 484
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->forceLoad()V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContentChanged:Z

    goto :goto_0
.end method

.method protected onForceLoad()V
    .locals 0

    .prologue
    .line 339
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    return-void
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 437
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 283
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 373
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    return-void
.end method

.method public registerListener(ILcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    .local p2, "listener":Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    .line 170
    iput p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mId:I

    .line 171
    return-void
.end method

.method public registerOnLoadCanceledListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    .local p1, "listener":Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener<TD;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    .line 202
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    const/4 v1, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onReset()V

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mReset:Z

    .line 424
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    .line 425
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    .line 426
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContentChanged:Z

    .line 427
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    .line 428
    return-void
.end method

.method public rollbackContentChanged()V
    .locals 1

    .prologue
    .line 470
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onContentChanged()V

    .line 473
    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    const/4 v1, 0x0

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    .line 272
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mReset:Z

    .line 273
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onStartLoading()V

    .line 275
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onStopLoading()V

    .line 364
    return-void
.end method

.method public takeContentChanged()Z
    .locals 2

    .prologue
    .line 445
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContentChanged:Z

    .line 446
    .local v0, "res":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContentChanged:Z

    .line 447
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    .line 448
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 507
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 508
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 509
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    .local p1, "listener":Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    if-eq v0, p1, :cond_1

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    .line 186
    return-void
.end method

.method public unregisterOnLoadCanceledListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>;"
    .local p1, "listener":Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener<TD;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    if-eq v0, p1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    .line 220
    return-void
.end method
