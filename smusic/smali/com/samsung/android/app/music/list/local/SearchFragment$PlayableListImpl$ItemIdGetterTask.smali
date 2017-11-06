.class Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;
.super Landroid/os/AsyncTask;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemIdGetterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[J>;"
    }
.end annotation


# instance fields
.field private final mBeginPosition:I

.field private final mEndPosition:I

.field private mLoadingProgress:Landroid/app/ProgressDialog;

.field final synthetic this$1:Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;II)V
    .locals 0
    .param p2, "beginPosition"    # I
    .param p3, "endPosition"    # I

    .prologue
    .line 552
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->this$1:Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 553
    iput p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mBeginPosition:I

    .line 554
    iput p3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mEndPosition:I

    .line 555
    return-void
.end method

.method private hideLoading()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->this$1:Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->access$1300(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    .line 587
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    .line 591
    :cond_0
    return-void
.end method

.method private showLoading(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 576
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->this$1:Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->access$1200(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 578
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    .line 579
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 582
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 583
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->doInBackground([Ljava/lang/Void;)[J

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[J
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->this$1:Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mBeginPosition:I

    iget v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->mEndPosition:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->access$1100(Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;II)[J

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 544
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->onPostExecute([J)V

    return-void
.end method

.method protected onPostExecute([J)V
    .locals 3
    .param p1, "result"    # [J

    .prologue
    .line 569
    array-length v0, p1

    if-lez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->this$1:Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getListType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->this$1:Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getKeyword()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(ILjava/lang/String;[JI)V

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->hideLoading()V

    .line 573
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 559
    const v0, 0x7f0a0156

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->showLoading(I)V

    .line 560
    return-void
.end method
