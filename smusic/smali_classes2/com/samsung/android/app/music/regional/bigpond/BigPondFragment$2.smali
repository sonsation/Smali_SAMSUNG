.class Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment$2;
.super Ljava/lang/Object;
.source "BigPondFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/view/View;IJ)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v4, 0x1

    .line 119
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->getModifiedPosition(I)I

    move-result p2

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;

    iget-object v2, v2, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mModel:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .line 121
    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return v4

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "BigPondFragment"

    const-string v3, "Activity Not found!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 127
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->access$000(Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Target Activity Not Found"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
