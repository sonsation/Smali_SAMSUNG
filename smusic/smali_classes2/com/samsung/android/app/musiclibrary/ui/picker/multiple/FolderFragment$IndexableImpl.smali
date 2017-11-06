.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$IndexableImpl;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$IndexableImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$IndexableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)V

    return-void
.end method


# virtual methods
.method public onSetIndexCol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-object v0
.end method
