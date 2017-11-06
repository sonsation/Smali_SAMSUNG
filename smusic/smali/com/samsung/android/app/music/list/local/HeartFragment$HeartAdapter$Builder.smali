.class public Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "HeartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mData1Col:Ljava/lang/String;

.field private mData2Col:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 1294
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 1289
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->mData1Col:Ljava/lang/String;

    .line 1291
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->mData2Col:Ljava/lang/String;

    .line 1295
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->mData1Col:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->mData2Col:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    .locals 1

    .prologue
    .line 1304
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;
    .locals 0

    .prologue
    .line 1299
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setData1Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->mData1Col:Ljava/lang/String;

    .line 1309
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setData2Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->mData2Col:Ljava/lang/String;

    .line 1314
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
