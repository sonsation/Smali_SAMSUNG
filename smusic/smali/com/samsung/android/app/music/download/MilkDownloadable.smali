.class public Lcom/samsung/android/app/music/download/MilkDownloadable;
.super Ljava/lang/Object;
.source "MilkDownloadable.java"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;
    }
.end annotation


# instance fields
.field protected final mFragment:Landroid/app/Fragment;

.field private mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final mSourceIdColumnName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .param p3, "sourceIdColumnName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->mFragment:Landroid/app/Fragment;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 27
    iput-object p3, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->mSourceIdColumnName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/download/MilkDownloadable;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/download/MilkDownloadable;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/download/MilkDownloadable;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/download/MilkDownloadable;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/download/MilkDownloadable;->downloadInternal([Ljava/lang/String;)V

    return-void
.end method

.method private downloadInternal([Ljava/lang/String;)V
    .locals 2
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "@"

    .line 39
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketLauncher;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public download()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 33
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->mSourceIdColumnName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;-><init>(Lcom/samsung/android/app/music/download/MilkDownloadable;Landroid/util/SparseBooleanArray;ILjava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    return-void
.end method
