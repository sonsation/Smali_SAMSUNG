.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$IndexableImpl;
.super Ljava/lang/Object;
.source "ArtistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexableImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$1;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$IndexableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetIndexCol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-object v0
.end method
