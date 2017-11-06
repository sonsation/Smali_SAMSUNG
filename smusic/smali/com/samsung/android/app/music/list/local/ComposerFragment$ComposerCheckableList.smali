.class Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "ComposerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ComposerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposerCheckableList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    .line 347
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 348
    return-void
.end method


# virtual methods
.method protected getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 5
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "composer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    const/4 v4, 0x0

    .line 355
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SortOrderGroup;->COMPOSER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    .line 356
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    .line 353
    invoke-static {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)[J

    move-result-object v0

    return-object v0
.end method
