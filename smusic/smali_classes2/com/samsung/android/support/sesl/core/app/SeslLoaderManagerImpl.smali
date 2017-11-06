.class Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
.super Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;
.source "SeslLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "SeslLoaderManager"


# instance fields
.field mCreatingLoader:Z

.field mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

.field final mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Z)V
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "host"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;
    .param p3, "started"    # Z

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;-><init>()V

    .line 195
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    .line 201
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    .line 528
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mWho:Ljava/lang/String;

    .line 529
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 530
    iput-boolean p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    .line 531
    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;, "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 548
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mCreatingLoader:Z

    .line 549
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 550
    .local v0, "info":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->installLoader(Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mCreatingLoader:Z

    .line 551
    return-object v0

    .line 553
    .end local v0    # "info":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mCreatingLoader:Z

    throw v1
.end method

.method private createLoader(ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .line 539
    .local p3, "callback":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;, "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)V

    .line 540
    .local v0, "info":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    invoke-interface {p3, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    move-result-object v1

    .line 541
    .local v1, "loader":Lcom/samsung/android/support/sesl/core/content/SeslLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<Ljava/lang/Object;>;"
    iput-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    .line 542
    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 714
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v2, :cond_0

    .line 715
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called while creating a loader"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 718
    :cond_0
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyLoader in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->indexOfKey(I)I

    move-result v0

    .line 720
    .local v0, "idx":I
    if-ltz v0, :cond_2

    .line 721
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 722
    .local v1, "info":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->removeAt(I)V

    .line 723
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->destroy()V

    .line 725
    .end local v1    # "info":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->indexOfKey(I)I

    move-result v0

    .line 726
    if-ltz v0, :cond_3

    .line 727
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 728
    .restart local v1    # "info":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->removeAt(I)V

    .line 729
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->destroy()V

    .line 731
    .end local v1    # "info":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->hasRunningLoaders()Z

    move-result v2

    if-nez v2, :cond_4

    .line 732
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->startPendingDeferredFragments()V

    .line 734
    :cond_4
    return-void
.end method

.method doDestroy()V
    .locals 4

    .prologue
    .line 830
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_2

    .line 831
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SeslLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying Active in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 833
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->destroy()V

    .line 832
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 835
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->clear()V

    .line 838
    .end local v0    # "i":I
    :cond_2
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "SeslLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying Inactive in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 840
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->destroy()V

    .line 839
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 842
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->clear()V

    .line 843
    return-void
.end method

.method doReportNextStart()V
    .locals 3

    .prologue
    .line 818
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 819
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 818
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 821
    :cond_0
    return-void
.end method

.method doReportStart()V
    .locals 2

    .prologue
    .line 824
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 825
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->reportStart()V

    .line 824
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 827
    :cond_0
    return-void
.end method

.method doRetain()V
    .locals 5

    .prologue
    .line 791
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retaining in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_2

    .line 793
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 795
    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doRetain when not started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void

    .line 799
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    .line 800
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    .line 801
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 802
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->retain()V

    .line 801
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method doStart()V
    .locals 5

    .prologue
    .line 758
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-eqz v2, :cond_2

    .line 760
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 761
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 762
    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doStart when already started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void

    .line 766
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    .line 770
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 771
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->start()V

    .line 770
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method doStop()V
    .locals 5

    .prologue
    .line 776
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_1

    .line 778
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 779
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 780
    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doStop when not started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 785
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->stop()V

    .line 784
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 787
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 858
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 859
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 862
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 863
    .local v2, "li":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 864
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "li":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 869
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Inactive Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 871
    .restart local v1    # "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 872
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 873
    .restart local v2    # "li":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 874
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 878
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "li":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    :cond_1
    return-void
.end method

.method finishRetain()V
    .locals 4

    .prologue
    .line 807
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    if-eqz v1, :cond_1

    .line 808
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SeslLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished Retaining in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    .line 811
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 812
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->finishRetain()V

    .line 811
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 815
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getLoader(I)Lcom/samsung/android/support/sesl/core/content/SeslLoader;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 743
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v1, :cond_0

    .line 744
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called while creating a loader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 748
    .local v0, "loaderInfo":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_2

    .line 749
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_1

    .line 750
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    .line 754
    :goto_0
    return-object v1

    .line 752
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    goto :goto_0

    .line 754
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasRunningLoaders()Z
    .locals 5

    .prologue
    .line 882
    const/4 v3, 0x0

    .line 883
    .local v3, "loadersRunning":Z
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v0

    .line 884
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 885
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 886
    .local v2, "li":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    iget-boolean v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v3, v4

    .line 884
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 888
    .end local v2    # "li":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    :cond_1
    return v3
.end method

.method public initLoader(ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)Lcom/samsung/android/support/sesl/core/content/SeslLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 594
    .local p3, "callback":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;, "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks<TD;>;"
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v1, :cond_0

    .line 595
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called while creating a loader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 600
    .local v0, "info":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SeslLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1
    if-nez v0, :cond_4

    .line 604
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 605
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SeslLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Created new loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-eqz v1, :cond_3

    .line 613
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Lcom/samsung/android/support/sesl/core/content/SeslLoader;Ljava/lang/Object;)V

    .line 616
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    return-object v1

    .line 607
    :cond_4
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "SeslLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_5
    iput-object p3, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;

    goto :goto_0
.end method

.method installLoader(Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    iget v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 559
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->start()V

    .line 565
    :cond_0
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)Lcom/samsung/android/support/sesl/core/content/SeslLoader;
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;, "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks<TD;>;"
    const/4 v5, 0x0

    .line 645
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v2, :cond_0

    .line 646
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called while creating a loader"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 650
    .local v1, "info":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restartLoader in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": args="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1
    if-eqz v1, :cond_3

    .line 652
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 653
    .local v0, "inactive":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_b

    .line 654
    iget-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_4

    .line 659
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Removing last inactive loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 661
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->destroy()V

    .line 662
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->abandon()V

    .line 663
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 701
    .end local v0    # "inactive":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    move-result-object v1

    .line 702
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    :goto_1
    return-object v2

    .line 668
    .restart local v0    # "inactive":Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->cancel()Z

    move-result v2

    if-nez v2, :cond_6

    .line 672
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "SeslLoaderManager"

    const-string v3, "  Current loader is stopped; replacing"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, p1, v5}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 674
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->destroy()V

    goto :goto_0

    .line 679
    :cond_6
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "SeslLoaderManager"

    const-string v3, "  Current loader is running; configuring pending loader"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_7
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    if-eqz v2, :cond_9

    .line 682
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Removing pending loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_8
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->destroy()V

    .line 684
    iput-object v5, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 686
    :cond_9
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "SeslLoaderManager"

    const-string v3, "  Enqueuing as new pending loader"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    .line 689
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    goto :goto_1

    .line 695
    :cond_b
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "SeslLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Making last loader inactive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_c
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->abandon()V

    .line 697
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 848
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SeslLoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 852
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateHostController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)V
    .locals 0
    .param p1, "host"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 535
    return-void
.end method
