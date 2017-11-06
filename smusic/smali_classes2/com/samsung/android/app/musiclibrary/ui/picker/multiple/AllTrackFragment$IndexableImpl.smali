.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$IndexableImpl;
.super Ljava/lang/Object;
.source "AllTrackFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$IndexableImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$IndexableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;)V

    return-void
.end method


# virtual methods
.method public onSetIndexCol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-object v0
.end method
