.class public Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;
.super Ljava/lang/Object;
.source "MusicVideoPresenter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayId:Ljava/lang/String;

.field private mDisplayType:Ljava/lang/String;

.field private mSelectNewest:Z

.field private mView:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # Ljava/lang/String;
    .param p3, "displayType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mSelectNewest:Z

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mDisplayType:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mDisplayId:Ljava/lang/String;

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mSelectNewest:Z

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mDisplayType:Ljava/lang/String;

    return-object v0
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;

    .line 46
    return-void
.end method

.method public changeDisplayType(Z)V
    .locals 0
    .param p1, "newest"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mSelectNewest:Z

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->loadMusicVideos()V

    .line 59
    return-void
.end method

.method public detachView()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;

    .line 50
    return-void
.end method

.method public getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public isViewAttached()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMusicVideos()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;

    invoke-interface {v0, v8}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;->showLoading(Z)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mDisplayType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 67
    .local v6, "type":I
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mSelectNewest:Z

    if-nez v0, :cond_1

    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->mDisplayId:Ljava/lang/String;

    .line 73
    .local v2, "displayId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;-><init>(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;Ljava/lang/String;)V

    const-string v4, "6"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d"

    new-array v8, v8, [Ljava/lang/Object;

    .line 142
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getStoreDisplayDetailPage(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
