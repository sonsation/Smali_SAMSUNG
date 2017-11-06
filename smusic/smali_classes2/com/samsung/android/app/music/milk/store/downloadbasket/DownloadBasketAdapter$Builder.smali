.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "DownloadBasketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public mFileExtensionCol:Ljava/lang/String;

.field public mPriceCol:Ljava/lang/String;

.field public mStatusCodeCol:Ljava/lang/String;

.field public mTabId:I

.field public mTrackIdCol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 147
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mTrackIdCol:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mPriceCol:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mStatusCodeCol:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mFileExtensionCol:Ljava/lang/String;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mTabId:I

    .line 159
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    .locals 0

    .prologue
    .line 163
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFileExtenstionCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mFileExtensionCol:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPriceCol(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    .locals 1
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mPriceCol:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mStatusCodeCol:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTabId(I)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    .locals 1
    .param p1, "tabId"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mTabId:I

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTrackIdCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->mTrackIdCol:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
