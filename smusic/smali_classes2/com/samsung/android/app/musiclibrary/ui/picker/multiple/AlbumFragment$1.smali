.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;
.super Ljava/lang/Object;
.source "AlbumFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

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
    .line 118
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    .line 119
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    .line 120
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "use_blur_ui"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    .line 121
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v6, "url_authority_base"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v4, v5, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumDetailFragment;->newInstance(JZLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumDetailFragment;

    move-result-object v1

    const v3, 0x100002

    .line 118
    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->launchTrackListFragment(Landroid/app/Fragment;I)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "use_blur_ui"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "2608"

    .line 126
    .local v0, "eventId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 123
    .end local v0    # "eventId":Ljava/lang/String;
    :cond_0
    const-string v0, "6102"

    goto :goto_0
.end method
