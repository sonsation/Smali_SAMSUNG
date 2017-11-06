.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MilkDownloadableImpl"
.end annotation


# instance fields
.field private final mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;->mFragment:Landroid/app/Fragment;

    .line 1062
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;->mContext:Landroid/content/Context;

    .line 1063
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 1064
    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 1052
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;->downloadInternal([Ljava/lang/String;)V

    return-void
.end method

.method private downloadInternal([Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceIds"    # [Ljava/lang/String;

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "@"

    .line 1079
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketLauncher;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1080
    return-void

    .line 1079
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public download()V
    .locals 4

    .prologue
    .line 1068
    new-instance v0, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl$1;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;-><init>(Landroid/content/Context;[JLcom/samsung/android/app/music/common/util/task/SourceIdGetterTask$SourceIdResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1074
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1075
    return-void
.end method
