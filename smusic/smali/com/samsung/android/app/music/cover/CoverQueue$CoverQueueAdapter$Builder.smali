.class Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "CoverQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutResId:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 233
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    .prologue
    .line 226
    iget v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->mLayoutResId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;-><init>(Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->build()Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;
    .locals 0

    .prologue
    .line 242
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->self()Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method setLayoutResId(I)Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;
    .locals 0
    .param p1, "layoutResId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 236
    iput p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->mLayoutResId:I

    .line 237
    return-object p0
.end method
