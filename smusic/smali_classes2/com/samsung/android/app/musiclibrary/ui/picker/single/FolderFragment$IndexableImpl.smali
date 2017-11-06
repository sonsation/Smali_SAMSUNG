.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderFragment$IndexableImpl;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexableImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderFragment$1;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderFragment$IndexableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetIndexCol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-object v0
.end method
