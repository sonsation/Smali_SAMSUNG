.class public Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;
.source "PickDetailArticleAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter",
        "<",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;",
        ">;",
        "Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;",
        "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickDetailArticleAdapter"

.field public static final TYPE_PICK_ARTICLE:I = 0x1

.field public static final TYPE_PICK_ARTICLE_HEADER:I = 0x0

.field public static final TYPE_PICK_ARTICLE_TRACK:I = 0x2


# instance fields
.field private mArticleEditor:Ljava/lang/String;

.field private mArticleReleaseDate:Ljava/lang/String;

.field private mArticleTracks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mOnClick:Landroid/view/View$OnClickListener;

.field protected mOnLongClick:Landroid/view/View$OnLongClickListener;

.field protected mPlayAllOnClick:Landroid/view/View$OnClickListener;

.field private mPlayRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayRequestPosition:I

.field private pickArticles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/PickArticle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->pickArticles:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestPosition:I

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mArticleTracks:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 90
    new-instance v0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayAllOnClick:Landroid/view/View$OnClickListener;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->pickArticles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getAlbumIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getAlbumIds(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "playTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 477
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 478
    .local v2, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-nez v0, :cond_0

    .line 479
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 485
    .end local v2    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getAlbumIds] ids : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getArticleTracks(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    :cond_0
    const-string v1, "PickDetailArticleAdapter"

    const-string v2, "getArticleTracks() articleId is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->pickArticles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/PickArticle;

    .line 356
    .local v0, "article":Lcom/samsung/android/app/music/common/model/PickArticle;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getTrackList()Ljava/util/List;

    move-result-object v1

    .line 360
    .end local v0    # "article":Lcom/samsung/android/app/music/common/model/PickArticle;
    :goto_0
    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCheckBoxResId()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 328
    if-nez p1, :cond_1

    .line 329
    const/4 v0, 0x0

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/common/model/PickArticle;

    if-nez v1, :cond_0

    .line 332
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-eqz v1, :cond_0

    .line 333
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getSelectableTracks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v0, "selectableTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 411
    .local v1, "track":Ljava/lang/Object;
    instance-of v3, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-eqz v3, :cond_0

    .line 412
    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .end local v1    # "track":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_1
    return-object v0
.end method

.method public getSelectedTracks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v0, "selectedTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 423
    .local v1, "track":Ljava/lang/Object;
    instance-of v3, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-eqz v3, :cond_0

    .line 424
    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .end local v1    # "track":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_1
    const-string v2, "PickDetailArticleAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSelectedTracks() Get selected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " track(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-object v0
.end method

.method public isClickable(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 316
    if-nez p1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/common/model/PickArticle;

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-eqz v1, :cond_0

    .line 321
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 278
    if-nez p1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/common/model/PickArticle;

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-eqz v1, :cond_0

    .line 283
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 366
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const v8, 0x100050

    .line 370
    const-string v5, "PickDetailArticleAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onApiHandled() reqId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reqType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rspType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/16 v5, 0x5dd

    if-ne p2, v5, :cond_1

    .line 374
    packed-switch p3, :pswitch_data_0

    .line 397
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestPosition:I

    invoke-static {v5, v8, v9, v6, v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 403
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 405
    :cond_1
    return-void

    :pswitch_0
    move-object v2, p4

    .line 376
    check-cast v2, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;

    .line 377
    .local v2, "list":Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    .line 378
    .local v1, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AlbumImageUrls;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 379
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;->getUrls()Ljava/util/ArrayList;

    move-result-object v4

    .line 380
    .local v4, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/ImageUrl;

    .line 381
    .local v3, "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    const/16 v6, 0x258

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getSize()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 382
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    if-nez v5, :cond_4

    .line 378
    .end local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 385
    .restart local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 386
    const-string v6, "PickDetailArticleAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "track :  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 391
    .end local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    .end local v4    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestPosition:I

    invoke-static {v5, v8, v9, v6, v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
    .locals 11
    .param p1, "vHolder"    # Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 151
    instance-of v8, p1, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;

    if-eqz v8, :cond_2

    move-object v7, p1

    .line 152
    check-cast v7, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;

    .line 154
    .local v7, "viewHolder":Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;->getReleaseDate()Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mArticleReleaseDate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;->getEditorName()Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mArticleEditor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;->getPlayAll()Landroid/widget/TextView;

    move-result-object v5

    .line 157
    .local v5, "playAllBtn":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayAllOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-boolean v8, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mSelectMode:Z

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 269
    .end local v5    # "playAllBtn":Landroid/widget/TextView;
    .end local v7    # "viewHolder":Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;
    :cond_0
    :goto_1
    return-void

    .line 158
    .restart local v5    # "playAllBtn":Landroid/widget/TextView;
    .restart local v7    # "viewHolder":Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 159
    .end local v5    # "playAllBtn":Landroid/widget/TextView;
    .end local v7    # "viewHolder":Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;
    :cond_2
    instance-of v8, p1, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;

    if-eqz v8, :cond_c

    .line 160
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 161
    .local v4, "item":Ljava/lang/Object;
    instance-of v8, v4, Lcom/samsung/android/app/music/common/model/PickArticle;

    if-nez v8, :cond_3

    .line 162
    const-string v8, "PickDetailArticleAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onBindItemViewHolder() PickArticle error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v7, p1

    .line 165
    check-cast v7, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;

    .local v7, "viewHolder":Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;
    move-object v0, v4

    .line 166
    check-cast v0, Lcom/samsung/android/app/music/common/model/PickArticle;

    .line 167
    .local v0, "article":Lcom/samsung/android/app/music/common/model/PickArticle;
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getArticleImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v2

    .line 170
    .local v2, "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getArticleId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->setArticleId(Ljava/lang/String;)V

    .line 173
    const/4 v8, 0x1

    if-ne p2, v8, :cond_6

    .line 174
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getDivider()Landroid/widget/LinearLayout;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "imageUrl":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 182
    :cond_4
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setVisibility(I)V

    .line 212
    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getArticleTitle()Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "title":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 214
    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getArticleTitle()Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :goto_4
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getArticleDescription()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getTrackList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getTrackList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 223
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getSelectAll()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->isSelectMode()Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 224
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getSelectAll()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getPlayAll()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->isSelectMode()Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 226
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getPlayAll()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 176
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_6
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getDivider()Landroid/widget/LinearLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 184
    .restart local v1    # "imageUrl":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$4;

    invoke-direct {v9, p0, v2, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$4;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Lcom/samsung/android/app/music/common/model/PickArticle;)V

    const v10, 0x7f0200d9

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 208
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setVisibility(I)V

    goto :goto_3

    .line 216
    .restart local v6    # "title":Ljava/lang/String;
    :cond_8
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getArticleTitle()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getArticleTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getArticleTitle()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 223
    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    .line 225
    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    .line 228
    :cond_b
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getSelectAll()Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getPlayAll()Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 231
    .end local v0    # "article":Lcom/samsung/android/app/music/common/model/PickArticle;
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v2    # "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .end local v4    # "item":Ljava/lang/Object;
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "viewHolder":Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;
    :cond_c
    instance-of v8, p1, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;

    if-eqz v8, :cond_0

    .line 232
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 233
    .restart local v4    # "item":Ljava/lang/Object;
    instance-of v8, v4, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-nez v8, :cond_d

    .line 234
    const-string v8, "PickDetailArticleAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onBindItemViewHolder() Simple Track error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    move-object v3, v4

    .line 237
    check-cast v3, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .local v3, "info":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    move-object v7, p1

    .line 238
    check-cast v7, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;

    .line 240
    .local v7, "viewHolder":Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getCheckBoxContainer()Landroid/widget/RelativeLayout;

    move-result-object v9

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->isSelectMode()Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x0

    :goto_7
    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v9

    .line 244
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getCheckBoxContainer()Landroid/widget/RelativeLayout;

    move-result-object v10

    .line 243
    invoke-virtual {p0, v8, v9, v10}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->setCheckboxBackground(Landroid/content/res/Resources;Landroid/widget/CheckBox;Landroid/view/View;)V

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->isSelectMode()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 246
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 247
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 253
    :cond_e
    :goto_8
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getThumbnail()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v9

    .line 257
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getExplicit()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_11

    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->isSelectMode()Z

    move-result v8

    if-eqz v8, :cond_12

    const/16 v8, 0x8

    :goto_a
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$5;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 241
    :cond_f
    const/16 v8, 0x8

    goto/16 :goto_7

    .line 249
    :cond_10
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_8

    .line 257
    :cond_11
    const/16 v8, 0x8

    goto :goto_9

    .line 258
    :cond_12
    const/4 v8, 0x0

    goto :goto_a
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V

    .line 144
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f12002a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 147
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    goto :goto_0
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "viewHolder":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    if-nez p2, :cond_1

    .line 132
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;

    move-result-object v0

    .line 138
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->create(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;)Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public playWithCurrentPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 290
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 291
    const-string v1, "PickDetailArticleAdapter"

    const-string v2, "playWithCurrentPosition() Request Playing Track(s) on going. ignore this"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 295
    :cond_0
    const-string v1, "PickDetailArticleAdapter"

    const-string v2, "playWithCurrentPosition() Request Playing Track(s)"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 300
    .local v0, "currentTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result v1

    if-nez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getSelectableTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestPosition:I

    .line 308
    :goto_1
    const-string v1, "PickDetailArticleAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playWithCurrentPosition() start playing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    .line 310
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getAlbumIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v1, p0, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumImageUrls(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mPlayRequestPosition:I

    goto :goto_1
.end method

.method public selectArticleTracks(Ljava/lang/String;)V
    .locals 5
    .param p1, "articleTrack"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 340
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mArticleTracks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->setSelectMode(Z)V

    .line 343
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mArticleTracks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 344
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mArticleTracks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 345
    .local v0, "endIndex":I
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->selectItems(II)V

    .line 347
    .end local v0    # "endIndex":I
    .end local v1    # "startIndex":I
    :cond_0
    return-void
.end method

.method public selectItems(II)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 468
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 469
    if-ne v0, p2, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->selectItem(IZZZ)V

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 469
    goto :goto_1

    .line 471
    :cond_1
    return-void
.end method

.method public setInfo(Lcom/samsung/android/app/music/common/model/PickInfo;)V
    .locals 9
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/PickInfo;

    .prologue
    .line 433
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/PickInfo;->getReleaseDate()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mArticleReleaseDate:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/PickInfo;->getEditorName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mArticleEditor:Ljava/lang/String;

    .line 435
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->pickArticles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 436
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->pickArticles:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/PickInfo;->getArticleList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 438
    const/4 v3, 0x0

    .line 439
    .local v3, "i":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v2, "articleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mArticleEditor:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v3, v3, 0x1

    .line 444
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/PickInfo;->getArticleList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/PickArticle;

    .line 446
    .local v0, "article":Lcom/samsung/android/app/music/common/model/PickArticle;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getArticleId()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "articleId":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 v3, v3, 0x1

    .line 450
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getTrackList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getTrackList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 452
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v6, "trackIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getTrackList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    move v5, v3

    .line 455
    .local v5, "startIndex":I
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getTrackList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int v4, v3, v8

    .line 456
    .local v4, "nextStartIndex":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v8, v4, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->mArticleTracks:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    move v3, v4

    goto :goto_0

    .line 464
    .end local v0    # "article":Lcom/samsung/android/app/music/common/model/PickArticle;
    .end local v1    # "articleId":Ljava/lang/String;
    .end local v4    # "nextStartIndex":I
    .end local v5    # "startIndex":I
    .end local v6    # "trackIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->swapArray(Ljava/util/List;)V

    .line 465
    return-void
.end method
