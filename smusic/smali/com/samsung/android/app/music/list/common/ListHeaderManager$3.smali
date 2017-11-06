.class Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;
.super Ljava/lang/Object;
.source "ListHeaderManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCountChanged(I)V
    .locals 2
    .param p1, "validCount"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$502(Lcom/samsung/android/app/music/list/common/ListHeaderManager;I)I

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 156
    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$800(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 155
    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$600(Lcom/samsung/android/app/music/list/common/ListHeaderManager;Z)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
