.class public Lcom/samsung/android/app/music/list/ListShareableImpl;
.super Lcom/samsung/android/app/music/AbsShareableWithDialog;
.source "ListShareableImpl.java"


# instance fields
.field private final mAsync:Z

.field private final mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private final mFragment:Landroid/app/Fragment;

.field private final mIdType:I
    .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
    .end annotation
.end field

.field private final mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;IZ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;IZ)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
    .param p3, "async"    # Z

    .prologue
    .line 40
    const-string/jumbo v0, "share_music_from_list"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;-><init>(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mFragment:Landroid/app/Fragment;

    move-object v0, p1

    .line 42
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 43
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .end local p1    # "fragment":Landroid/app/Fragment;
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 44
    iput p2, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mIdType:I

    .line 45
    iput-boolean p3, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mAsync:Z

    .line 46
    return-void

    .line 43
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Fragment;Z)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "async"    # Z

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;IZ)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/ListShareableImpl;[J)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/ListShareableImpl;
    .param p1, "x1"    # [J

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl;->showLegalDialog([J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/ListShareableImpl;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/ListShareableImpl;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/ListShareableImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/ListShareableImpl;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;->getBixbyCrossSharePackages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/ListShareableImpl;Landroid/content/Context;[JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/ListShareableImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # [J
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/ListShareableImpl;->shareInternal(Landroid/content/Context;[JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getSharedItemIds()[J
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iget v1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mIdType:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v0

    return-object v0
.end method

.method public share()V
    .locals 6

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mAsync:Z

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iget v1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mIdType:I

    new-instance v2, Lcom/samsung/android/app/music/list/ListShareableImpl$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl$1;-><init>(Lcom/samsung/android/app/music/list/ListShareableImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIdsAsync(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1024"

    iget-object v3, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 67
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemCount()I

    move-result v3

    int-to-long v4, v3

    .line 65
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 69
    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->share()V

    goto :goto_0
.end method
