.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$IndexableImpl;
.super Ljava/lang/Object;
.source "AllTrackFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexableImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$1;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$IndexableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetIndexCol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-object v0
.end method
