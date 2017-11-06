.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$IndexableImpl;
.super Ljava/lang/Object;
.source "AlbumFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$IndexableImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$IndexableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)V

    return-void
.end method


# virtual methods
.method public onSetIndexCol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-object v0
.end method
