.class public abstract Lcom/android/launcher3/allapps/controller/AppsAdapter;
.super Ljava/lang/Object;
.source "AppsAdapter.java"

# interfaces
.implements Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
.implements Lcom/android/launcher3/allapps/view/Inflater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;
    }
.end annotation


# static fields
.field protected static final ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppsAdapter"


# instance fields
.field protected mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

.field protected final mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

.field private mDeferUpdate:Ljava/lang/Runnable;

.field protected final mFirstLoadStub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/view/Stub;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field protected mHandler:Landroid/os/Handler;

.field private mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

.field protected final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field protected final mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

.field protected final mPendingUdpateItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSavedDeferRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/view/Stub;",
            ">;"
        }
    .end annotation
.end field

.field protected mUpdateLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsAdapter$3;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter$3;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->ORDER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;
    .param p3, "holder"    # Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mHandler:Landroid/os/Handler;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mUpdateLocked:Z

    .line 77
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDeferUpdate:Ljava/lang/Runnable;

    .line 102
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    .line 136
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 137
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    .line 138
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 139
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    .line 141
    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    .line 142
    iget-object v1, p3, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    .line 143
    iget-object v1, p3, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mStubs:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mStub:Ljava/util/ArrayList;

    .line 144
    iget-object v1, p3, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mFirstLoadStubs:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFirstLoadStub:Ljava/util/ArrayList;

    .line 145
    iget-object v1, p3, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mPendingUdpateItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mPendingUdpateItems:Ljava/util/ArrayList;

    .line 146
    iget-object v1, p3, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mSavedDeferRunnables:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mSavedDeferRunnables:Ljava/util/ArrayList;

    .line 148
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 151
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsAdapter;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->waitNextUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->adjustNewItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsAdapter;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->cancelStubTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsAdapter;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->resetData()V

    return-void
.end method

.method private addDeferredUpdateRunnable()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mSavedDeferRunnables:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDeferUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mSavedDeferRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mSavedDeferRunnables:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDeferUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    monitor-exit v1

    .line 505
    :cond_0
    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private adjustNewItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mAddItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 512
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mAddItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 514
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mRemoveItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 515
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mRemoveItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 517
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mAddItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    const-string v0, "model does not have an item which is added : "

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mAddItems:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mRemoveItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    const-string v0, "model have an item which is deleted : "

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mRemoveItems:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 524
    :cond_1
    return-object p1
.end method

.method private cancelStubTask()V
    .locals 3

    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mStub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/Stub;

    .line 540
    .local v0, "stub":Lcom/android/launcher3/allapps/view/Stub;
    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/Stub;->cancelTask()V

    goto :goto_0

    .line 542
    .end local v0    # "stub":Lcom/android/launcher3/allapps/view/Stub;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mStub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 544
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFirstLoadStub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/Stub;

    .line 545
    .restart local v0    # "stub":Lcom/android/launcher3/allapps/view/Stub;
    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/Stub;->cancelTask()V

    goto :goto_1

    .line 547
    .end local v0    # "stub":Lcom/android/launcher3/allapps/view/Stub;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mStub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 548
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFirstLoadStub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 549
    return-void
.end method

.method protected static debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 916
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 917
    return-void
.end method

.method protected static debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "printStack"    # Z

    .prologue
    .line 920
    if-nez p1, :cond_0

    .line 921
    const-string v1, "AppsAdapter"

    const-string v2, "no iteminfo for debug"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :goto_0
    return-void

    .line 925
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    .line 926
    .local v0, "joiner":Lcom/android/launcher3/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/StringJoiner;->append(Ljava/lang/String;)V

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/StringJoiner;->append(Ljava/lang/String;)V

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/StringJoiner;->append(Ljava/lang/String;)V

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rank="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/StringJoiner;->append(Ljava/lang/String;)V

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/StringJoiner;->append(Ljava/lang/String;)V

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/StringJoiner;->append(Ljava/lang/String;)V

    .line 933
    if-eqz p2, :cond_1

    .line 934
    const-string v1, "AppsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 936
    :cond_1
    const-string v1, "AppsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected static debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 906
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 907
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_0

    .line 908
    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 910
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_0
    const-string v2, "AppsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid item : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 913
    .end local v0    # "item":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method protected static getFolderItems(Ljava/util/ArrayList;)Lcom/android/launcher3/util/LongArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v1}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 393
    .local v1, "folderItems":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 394
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 397
    iget-wide v4, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 398
    .local v0, "childs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez v0, :cond_1

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "childs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .restart local v0    # "childs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-wide v4, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 402
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    .end local v0    # "childs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    return-object v1
.end method

.method private hasItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 677
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    monitor-enter v2

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 679
    .local v0, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 680
    const/4 v1, 0x1

    monitor-exit v2

    .line 684
    .end local v0    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    return v1

    .line 683
    :cond_1
    monitor-exit v2

    .line 684
    const/4 v1, 0x0

    goto :goto_0

    .line 683
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetData()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mPendingUdpateItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 560
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mSavedDeferRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 561
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mAddItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 562
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mRemoveItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 563
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->removeAllViews()V

    .line 564
    return-void
.end method

.method private setupDefaultGridInfo(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;[I)V
    .locals 13
    .param p1, "dp"    # Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .param p2, "gridXY"    # [I

    .prologue
    const v12, 0x7f0b0001

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 873
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 874
    .local v6, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isDreamProject()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isCruiserProject()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    move v5, v8

    .line 875
    .local v5, "isDreamProject":Z
    :goto_0
    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 876
    :cond_1
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 878
    .local v3, "gridX":I
    :goto_1
    const v9, 0x7f0c0004

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "gridSet":[Ljava/lang/String;
    const-string v0, ""

    .line 881
    .local v0, "grid":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    array-length v9, v1

    if-ge v4, v9, :cond_6

    .line 882
    aget-object v0, v1, v4

    .line 883
    const-string v9, "AppsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "grid - index("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), value("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 885
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid grid"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0    # "grid":Ljava/lang/String;
    .end local v1    # "gridSet":[Ljava/lang/String;
    .end local v3    # "gridX":I
    .end local v4    # "index":I
    .end local v5    # "isDreamProject":Z
    :cond_3
    move v5, v7

    .line 874
    goto :goto_0

    .line 876
    .restart local v5    # "isDreamProject":Z
    :cond_4
    iget-object v9, p1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    goto :goto_1

    .line 888
    .restart local v0    # "grid":Ljava/lang/String;
    .restart local v1    # "gridSet":[Ljava/lang/String;
    .restart local v3    # "gridX":I
    .restart local v4    # "index":I
    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 893
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 894
    const-string v9, "x"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "gridVaules":[Ljava/lang/String;
    aget-object v9, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, p2, v7

    .line 896
    aget-object v9, v2, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, p2, v8

    .line 901
    .end local v2    # "gridVaules":[Ljava/lang/String;
    :goto_3
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v10, p2, v7

    aget v11, p2, v8

    invoke-static {v9, v10, v11}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsGridLayoutPreference(Landroid/content/Context;II)V

    .line 902
    const-string v9, "AppsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupDefaultAppsGridInfo : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v7, p2, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void

    .line 881
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 898
    :cond_8
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    aput v9, p2, v7

    .line 899
    const v9, 0x7f0b0002

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    aput v9, p2, v8

    goto :goto_3
.end method

.method private setupGridInfo()V
    .locals 10

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 809
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 811
    .local v2, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 813
    .local v4, "gridXY":[I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 814
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v5

    aput v5, v4, v8

    .line 815
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    aput v5, v4, v9

    .line 835
    :cond_0
    :goto_0
    const-string v5, "AppsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupGridInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , easymode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 836
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 835
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void

    .line 817
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 818
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadAppsSupportedGridSet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 820
    .local v3, "gridSet":Ljava/lang/String;
    aget v5, v4, v8

    if-eq v5, v6, :cond_2

    aget v5, v4, v9

    if-ne v5, v6, :cond_5

    .line 822
    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->setupDefaultGridInfo(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;[I)V

    .line 823
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->setupGridSet()V

    .line 828
    :cond_3
    :goto_1
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    .line 829
    .local v0, "cellCountX":I
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    .line 830
    .local v1, "cellCountY":I
    aget v5, v4, v8

    if-ne v0, v5, :cond_4

    aget v5, v4, v9

    if-eq v1, v5, :cond_0

    .line 831
    :cond_4
    const-string v5, "AppsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateGridInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    aget v5, v4, v8

    aget v6, v4, v9

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateAppsGridInfo(II)V

    goto/16 :goto_0

    .line 824
    .end local v0    # "cellCountX":I
    .end local v1    # "cellCountY":I
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 825
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->setupGridSet()V

    goto :goto_1
.end method

.method private setupGridSet()V
    .locals 8

    .prologue
    .line 852
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 853
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, "gridSet":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 857
    aget-object v1, v2, v3

    .line 858
    .local v1, "grid":Ljava/lang/String;
    const-string v5, "AppsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "grid - index("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), value("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 860
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid grid"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 863
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    .line 865
    const-string v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 868
    .end local v1    # "grid":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsSupportedGridSet(Landroid/content/Context;Ljava/lang/String;)V

    .line 869
    const-string v5, "AppsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupAppsGridSet : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void
.end method

.method private updateAppsGridInfo(II)V
    .locals 2
    .param p1, "gridX"    # I
    .param p2, "gridY"    # I

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsAdapter$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsAdapter$10;-><init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 849
    return-void
.end method

.method private updateItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 648
    const-string v0, "updateItem by ui : "

    invoke-static {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 649
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 650
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 652
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->hasItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "updateitem add to apps by ui"

    invoke-static {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 656
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mAddItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mRemoveItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 660
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 674
    return-void

    .line 660
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 673
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 662
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 663
    :try_start_6
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 665
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_2

    .line 666
    const-string v0, "updateItem remove from apps by ui"

    invoke-static {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 667
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mRemoveItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mAddItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 671
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private waitNextUpdate()Z
    .locals 4

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v1, v1, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mModelPrepared:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/model/AppsModel;->isUpdateLocked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v1, v1, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mDestroyed:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 253
    .local v0, "wait":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 254
    const-string v1, "AppsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitNextUpdate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v3, v3, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mModelPrepared:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    .line 255
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/model/AppsModel;->isUpdateLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v3, v3, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mDestroyed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    return v0

    .line 251
    .end local v0    # "wait":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "AppsAdapter"

    const-string v1, "activate adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/model/AppsModel;->addModelListener(Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;)V

    .line 169
    return-void
.end method

.method public addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 572
    const-string v0, "addItem to apps by ui"

    invoke-static {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 573
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 574
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mAddItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mRemoveItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 581
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0

    .line 581
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addItemToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v0, "AppsAdapter"

    const-string v1, "post to manin addItemToFolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;-><init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method protected addItemView(Ljava/util/ArrayList;Z)V
    .locals 6
    .param p2, "useStub"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 409
    const-string v3, "AppsAdapter"

    const-string v4, "Launcher window is still not attached"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 412
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v3, v3, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mDestroyed:Z

    if-eqz v3, :cond_2

    .line 429
    :cond_1
    return-void

    .line 415
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 417
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v3, :cond_3

    instance-of v3, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_5

    .line 418
    :cond_3
    if-eqz p2, :cond_4

    .line 419
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->createItemViewStub(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v2

    .line 427
    .local v2, "view":Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v3, v2, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 411
    .end local v2    # "view":Landroid/view/View;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 424
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    const-string v3, "AppsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected addItemView(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v1, v1, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 433
    const-string v1, "AppsAdapter"

    const-string v2, "Launcher destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v1, 0x0

    .line 443
    :goto_0
    return v1

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 438
    const-string v1, "AppsAdapter"

    const-string v2, "Launcher window is still not attached or destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v1, v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 443
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "recycleView"    # Landroid/view/View;

    .prologue
    .line 476
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 477
    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 478
    .local v0, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->markAsLockedFolderWhenBind(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 482
    .end local v0    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v1, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected createItemViewStub(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 453
    instance-of v2, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    .line 454
    new-instance v1, Lcom/android/launcher3/allapps/view/FolderIconViewStub;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;-><init>(Landroid/content/Context;)V

    .line 460
    .local v1, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 462
    check-cast v0, Lcom/android/launcher3/allapps/view/Stub;

    .line 463
    .local v0, "stub":Lcom/android/launcher3/allapps/view/Stub;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mInflateListener:Lcom/android/launcher3/common/view/OnInflateListener;

    invoke-interface {v0, v2}, Lcom/android/launcher3/allapps/view/Stub;->setInflateListener(Lcom/android/launcher3/common/view/OnInflateListener;)V

    .line 464
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v2, v2, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mFirstLoaded:Z

    if-eqz v2, :cond_2

    .line 465
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mStub:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :goto_1
    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/view/Stub;->inflateInBackground(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 471
    invoke-interface {v0, p1, p0}, Lcom/android/launcher3/allapps/view/Stub;->prefetchIconResInBackground(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/allapps/view/Inflater;)V

    .line 472
    return-object v1

    .line 455
    .end local v0    # "stub":Lcom/android/launcher3/allapps/view/Stub;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    instance-of v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_1

    .line 456
    new-instance v1, Lcom/android/launcher3/allapps/view/AppsIconViewStub;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f04002f

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;-><init>(Landroid/content/Context;I)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 458
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 467
    .restart local v0    # "stub":Lcom/android/launcher3/allapps/view/Stub;
    .restart local v1    # "view":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFirstLoadStub:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/model/AppsModel;->removeModelListener(Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;)V

    .line 173
    return-void
.end method

.method public deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 607
    const-string v2, "deleteItem from apps by ui"

    invoke-static {v2, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 608
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 609
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 611
    instance-of v2, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mRemoveItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mAddItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 616
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v1

    .line 618
    .local v1, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-virtual {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    instance-of v2, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_2

    .line 620
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteFolder(J)V

    .line 627
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 628
    return-void

    .line 616
    .end local v1    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 622
    .restart local v1    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteItems(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/model/AppsModel;->removeModelListener(Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mDestroyed:Z

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mFirstLoaded:Z

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mModelPrepared:Z

    .line 158
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->cancelStubTask()V

    .line 159
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->resetData()V

    .line 160
    return-void
.end method

.method public getDirtyItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 688
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v3, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 690
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-boolean v5, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    if-eqz v5, :cond_1

    .line 691
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iput-boolean v7, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 695
    :cond_1
    instance-of v5, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_0

    move-object v1, v2

    .line 696
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 697
    .local v1, "fInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v5, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 698
    .local v0, "child":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-boolean v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    if-eqz v6, :cond_2

    .line 699
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    iput-boolean v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    goto :goto_0

    .line 705
    .end local v0    # "child":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "fInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    return-object v3
.end method

.method public getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 528
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    monitor-enter v2

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 530
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 531
    monitor-exit v2

    .line 535
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    return-object v0

    .line 534
    :cond_1
    monitor-exit v2

    .line 535
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected abstract getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
.end method

.method public inflateView(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v0, 0x0

    .line 448
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/util/StringJoiner;

    const-string v2, ","

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    .line 710
    .local v1, "joiner":Lcom/android/launcher3/util/StringJoiner;
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 711
    .local v0, "folder":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/StringJoiner;->append(J)V

    goto :goto_0

    .line 713
    .end local v0    # "folder":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public notifyUpdate(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyupdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->waitNextUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " waitNextUpdate1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mPendingUdpateItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mPendingUdpateItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mPendingUdpateItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 201
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->needDeferredUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    const-string v0, "AppsAdapter"

    const-string v1, "addDeferredUpdateRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->addDeferredUpdateRunnable()V

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mStopped:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;-><init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onLoadComplete(I)V
    .locals 2
    .param p1, "taskState"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mModelPrepared:Z

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mFirstLoaded:Z

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->notifyUpdate(Ljava/util/ArrayList;)V

    .line 186
    return-void
.end method

.method public onLoadStart()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->setupGridInfo()V

    .line 312
    return-void
.end method

.method public postDeferredRunnables()V
    .locals 6

    .prologue
    .line 486
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mSavedDeferRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 487
    const/4 v2, 0x0

    .line 488
    .local v2, "savedDeferRunnable":[Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mSavedDeferRunnables:Ljava/util/ArrayList;

    monitor-enter v4

    .line 489
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mSavedDeferRunnables:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mSavedDeferRunnables:Ljava/util/ArrayList;

    .line 490
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Runnable;

    .line 489
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Runnable;

    move-object v2, v0

    .line 491
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mSavedDeferRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 492
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 494
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    .end local v1    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 497
    .end local v2    # "savedDeferRunnable":[Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public reloadAllItemsFromDB(Z)V
    .locals 30
    .param p1, "withFolderContents"    # Z

    .prologue
    .line 720
    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 721
    .local v5, "contentUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 722
    .local v6, "projection":[Ljava/lang/String;
    const-string v7, "(container=?)"

    .line 723
    .local v7, "selection":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, -0x66

    .line 724
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 727
    .local v8, "selectionArg":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 729
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    const-string v9, "rank ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 730
    .local v15, "c":Landroid/database/Cursor;
    if-nez v15, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-gtz v9, :cond_2

    .line 735
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 738
    :cond_2
    new-instance v17, Lcom/android/launcher3/common/model/CursorInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 739
    .local v17, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    new-instance v21, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct/range {v21 .. v21}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 740
    .local v21, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v19, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 742
    .local v19, "folderContents":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v26, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct/range {v26 .. v26}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 743
    .local v26, "itemIdMap":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 744
    .local v27, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v27

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 764
    .end local v27    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .local v23, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .local v24, "id":J
    .local v28, "rank":I
    .local v29, "screenId":I
    :cond_3
    :try_start_0
    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 765
    .local v16, "component":Ljava/lang/String;
    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 766
    .local v22, "hidden":I
    const-string v9, "AppsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There is no item in mItems but it is exist on database. Intent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", hidden : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local v16    # "component":Ljava/lang/String;
    .end local v22    # "hidden":I
    .end local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v24    # "id":J
    .end local v28    # "rank":I
    .end local v29    # "screenId":I
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 749
    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 750
    .restart local v24    # "id":J
    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 751
    .restart local v29    # "screenId":I
    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 752
    .restart local v28    # "rank":I
    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 753
    .restart local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v23, :cond_3

    .line 754
    move/from16 v0, v29

    int-to-long v10, v0

    move-object/from16 v0, v23

    iput-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 755
    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 756
    if-eqz p1, :cond_4

    move-object/from16 v0, v23

    instance-of v9, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v9, :cond_4

    .line 757
    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 758
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v20, v0

    .line 759
    .local v20, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 760
    .local v18, "folderContentInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 771
    .end local v18    # "folderContentInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v20    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v24    # "id":J
    .end local v28    # "rank":I
    .end local v29    # "screenId":I
    :catchall_0
    move-exception v9

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_5

    .line 772
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v9

    .line 771
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_7

    .line 772
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 776
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 777
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "container in ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 778
    const/4 v13, 0x0

    const-string v14, "rank ASC"

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move-object v12, v7

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 779
    if-eqz v15, :cond_0

    .line 783
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-gtz v9, :cond_8

    .line 784
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 789
    :cond_8
    :goto_3
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 790
    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 791
    .restart local v24    # "id":J
    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 792
    .restart local v28    # "rank":I
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 793
    .restart local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v23, :cond_a

    .line 794
    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 801
    .end local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v24    # "id":J
    .end local v28    # "rank":I
    :catchall_1
    move-exception v9

    if-eqz v15, :cond_9

    .line 802
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v9

    .line 796
    .restart local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v24    # "id":J
    .restart local v28    # "rank":I
    :cond_a
    :try_start_2
    const-string v9, "AppsAdapter"

    const-string v10, "no item in sBgItemsIdMap for folder"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 801
    .end local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v24    # "id":J
    .end local v28    # "rank":I
    :cond_b
    if-eqz v15, :cond_0

    .line 802
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public removeAllItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    const-string v0, "AppsAdapter"

    const-string v1, "removeAllItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mFirstLoaded:Z

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mModelPrepared:Z

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsAdapter$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter$5;-><init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method public removeAppsItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsAdapter$6;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter$6;-><init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    :cond_0
    return-void
.end method

.method protected abstract removeViewAndReorder(Lcom/android/launcher3/common/base/item/IconInfo;)V
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->notifyUpdate(Ljava/util/ArrayList;)V

    .line 164
    return-void
.end method

.method public setStateAndUpdateLock(IZ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "updateLock"    # Z

    .prologue
    .line 508
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 553
    const-string v0, "AppsAdapter"

    const-string v1, "adapter terminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->destroy()V

    .line 555
    return-void
.end method

.method protected abstract updateAppsContents(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public updateDirtyItems()V
    .locals 6

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->getDirtyItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 632
    .local v2, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 633
    :cond_0
    const-string v4, "AppsAdapter"

    const-string v5, "update dirty list is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_0
    return-void

    .line 637
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 640
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 641
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v5, v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 642
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 644
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected abstract updateFolderContents(Lcom/android/launcher3/util/LongArrayMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public updateIconAndTitle(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;-><init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method

.method public updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "value"    # Landroid/content/ContentValues;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mUpdateLocked:Z

    if-eqz v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 591
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsModel;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method protected updateItemsAndContents(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    .local v0, "oldItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    monitor-enter v2

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 380
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 381
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateAppsContents(Ljava/util/ArrayList;)V

    .line 383
    return-void

    .line 381
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p2, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mUpdateLocked:Z

    if-eqz v1, :cond_0

    .line 603
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 600
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 602
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsModel;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v0, "AppsAdapter"

    const-string v1, "post to manin updateRestoreItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsAdapter$9;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter$9;-><init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method
