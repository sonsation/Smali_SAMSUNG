.class public Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "RadioHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mHeaderCol:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 243
    const-string v0, "date_locale"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->mHeaderCol:Ljava/lang/String;

    .line 248
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;
    .locals 0

    .prologue
    .line 257
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 251
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->mHeaderCol:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
