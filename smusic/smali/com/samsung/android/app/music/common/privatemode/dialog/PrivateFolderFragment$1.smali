.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$1;
.super Ljava/lang/Object;
.source "PrivateFolderFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 86
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/app/Activity;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;

    invoke-virtual {v5, p2}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 88
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 89
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;

    const-string v6, "_data"

    .line 90
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->access$000(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "destPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 93
    .local v2, "data":Landroid/os/Bundle;
    const-string/jumbo v5, "path"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v4, "i":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    const/4 v5, -0x1

    invoke-virtual {v0, v5, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 98
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "destPath":Ljava/lang/String;
    .end local v4    # "i":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 99
    return-void
.end method
