.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$1;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 121
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    .line 122
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    .line 123
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "use_blur_ui"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    .line 124
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "url_authority_base"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->newInstance(Ljava/lang/String;ZLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;

    move-result-object v1

    const v3, 0x100007

    .line 121
    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->launchTrackListFragment(Landroid/app/Fragment;I)V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "use_blur_ui"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "2610"

    .line 129
    .local v0, "eventId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 126
    .end local v0    # "eventId":Ljava/lang/String;
    :cond_0
    const-string v0, "6104"

    goto :goto_0
.end method
